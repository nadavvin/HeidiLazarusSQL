object MainForm: TMainForm
  Left = 220
  Height = 466
  Top = 507
  Width = 824
  ClientHeight = 443
  ClientWidth = 824
  Color = clBtnFace
  Menu = MainMenu1
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  ParentFont = True
  ShowHint = True
  LCLVersion = '2.1.0.0'
  object spltTopBottom: TSplitter
    Cursor = crVSplit
    Left = 0
    Height = 4
    Top = 340
    Width = 824
    Align = alBottom
    AutoSnap = False
    ResizeAnchor = akBottom
  end
  inline SynMemoSQLLog: TSynMemo
    Cursor = crIBeam
    Left = 0
    Height = 80
    Top = 344
    Width = 824
    Align = alBottom
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Pitch = fpFixed
    Font.Quality = fqNonAntialiased
    ParentColor = False
    ParentFont = False
    PopupMenu = popupSqlLog
    TabOrder = 1
    Gutter.LeftOffset = 2
    Gutter.Width = 57
    Gutter.MouseActions = <>
    Highlighter = SynSQLSyn1
    Keystrokes = <>
    MouseActions = <>
    MouseTextActions = <>
    MouseSelActions = <>
    Options = [eoAutoIndent, eoShowScrollHint, eoSmartTabs, eoTabsToSpaces, eoDragDropEditing]
    MouseOptions = [emDragDropEditing]
    VisibleSpecialChars = [vscSpace, vscTabAtLast]
    ReadOnly = True
    RightEdge = 0
    ScrollBars = ssVertical
    SelectedColor.BackPriority = 50
    SelectedColor.ForePriority = 50
    SelectedColor.FramePriority = 50
    SelectedColor.BoldPriority = 50
    SelectedColor.ItalicPriority = 50
    SelectedColor.UnderlinePriority = 50
    SelectedColor.StrikeOutPriority = 50
    inline SynLeftGutterPartList1: TSynGutterPartList
      object SynGutterMarks1: TSynGutterMarks
        Width = 24
        MouseActions = <>
      end
      object SynGutterLineNumber1: TSynGutterLineNumber
        Width = 15
        MouseActions = <>
        MarkupInfo.Background = clBtnFace
        MarkupInfo.Foreground = clNone
        DigitCount = 2
        ShowOnlyLineNumbersMultiplesOf = 1
        ZeroStart = False
        LeadingZeros = False
      end
      object SynGutterChanges1: TSynGutterChanges
        Width = 4
        MouseActions = <>
        ModifiedColor = 59900
        SavedColor = clGreen
      end
      object SynGutterSeparator1: TSynGutterSeparator
        Width = 2
        MouseActions = <>
        MarkupInfo.Background = clWhite
        MarkupInfo.Foreground = clGray
      end
      object SynGutterCodeFolding1: TSynGutterCodeFolding
        MouseActions = <>
        MarkupInfo.Background = clNone
        MarkupInfo.Foreground = clGray
        MouseActionsExpanded = <>
        MouseActionsCollapsed = <>
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Height = 19
    Top = 424
    Width = 824
    AutoHint = True
    Panels = <    
      item
        Width = 150
      end    
      item
        Width = 110
      end    
      item
        Style = psOwnerDraw
        Width = 140
      end    
      item
        Style = psOwnerDraw
        Width = 170
      end    
      item
        Width = 170
      end    
      item
        Style = psOwnerDraw
        Width = 170
      end    
      item
        Style = psOwnerDraw
        Width = 250
      end>
    UseSystemFont = False
    OnClick = StatusBarClick
    OnDrawPanel = StatusBarDrawPanel
    OnMouseLeave = StatusBarMouseLeave
    OnMouseMove = StatusBarMouseMove
  end
  object panelTop: TPanel
    Left = 0
    Height = 286
    Top = 54
    Width = 824
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    ClientHeight = 286
    ClientWidth = 824
    TabOrder = 0
    OnDblClick = panelTopDblClick
    object spltDBtree: TSplitter
      Cursor = crSizeWE
      Left = 169
      Height = 286
      Top = 0
      Width = 4
    end
    object pnlLeft: TPanel
      Left = 0
      Height = 286
      Top = 0
      Width = 169
      Align = alLeft
      BevelOuter = bvNone
      ClientHeight = 286
      ClientWidth = 169
      TabOrder = 0
      OnResize = pnlLeftResize
      object spltPreview: TSplitter
        Cursor = crVSplit
        Left = 0
        Height = 4
        Top = 182
        Width = 169
        Align = alBottom
        OnMoved = spltPreviewMoved
        ResizeAnchor = akBottom
        Visible = False
      end
      object DBtree: TVirtualStringTree
        Left = 0
        Height = 160
        Top = 22
        Width = 169
        Align = alClient
        Constraints.MinWidth = 40
        DragMode = dmAutomatic
        DragType = dtVCL
        Header.AutoSizeIndex = 0
        Header.Columns = <        
          item
            Position = 0
            Text = 'Name'
            Width = 112
          end        
          item
            MinWidth = 0
            Position = 1
            Text = 'Size'
            Width = 55
          end>
        Header.Options = [hoAutoResize, hoColumnResize, hoDrag]
        Header.ParentFont = True
        HintMode = hmTooltip
        HotCursor = crHandPoint
        Images = ImageListMain
        IncrementalSearch = isInitializedOnly
        Indent = 12
        ParentShowHint = False
        PopupMenu = popupDB
        ShowHint = True
        TabOrder = 0
        TreeOptions.PaintOptions = [toHotTrack, toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toThemeAware, toUseBlendedImages, toGhostedIfUnfocused, toUseExplorerTheme, toHideTreeLinesIfThemed]
        TreeOptions.SelectionOptions = [toFullRowSelect, toRightClickSelect]
        OnAfterCellPaint = DBtreeAfterCellPaint
        OnBeforeCellPaint = DBtreeBeforeCellPaint
        OnChange = DBtreeChange
        OnDblClick = DBtreeDblClick
        OnExpanded = DBtreeExpanded
        OnExpanding = DBtreeExpanding
        OnFocusChanged = DBtreeFocusChanged
        OnFocusChanging = DBtreeFocusChanging
        OnFreeNode = DBtreeFreeNode
        OnGetText = DBtreeGetText
        OnPaintText = DBtreePaintText
        OnGetImageIndex = DBtreeGetImageIndex
        OnGetHint = AnyGridGetHint
        OnGetNodeDataSize = DBtreeGetNodeDataSize
        OnInitChildren = DBtreeInitChildren
        OnInitNode = DBtreeInitNode
        OnMouseUp = DBtreeMouseUp
      end
      object pnlPreview: TPanel
        Left = 0
        Height = 100
        Top = 186
        Width = 169
        Align = alBottom
        BevelOuter = bvNone
        ClientHeight = 100
        ClientWidth = 169
        TabOrder = 1
        Visible = False
        object imgPreview: TImage
          Left = 0
          Height = 100
          Top = 0
          Width = 169
          Align = alClient
          Center = True
          Proportional = True
          Stretch = True
        end
        object lblPreviewTitle: TLabel
          Left = 3
          Height = 25
          Top = 0
          Width = 85
          Anchors = [akTop, akLeft, akRight]
          AutoSize = False
          Caption = 'Preview ...'
          Layout = tlCenter
          ParentColor = False
          ParentShowHint = False
          ShowAccelChar = False
          ShowHint = True
        end
        object ToolBarPreview: TToolBar
          Left = 100
          Height = 23
          Top = 1
          Width = 70
          Align = alNone
          Anchors = [akTop, akRight]
          Caption = 'ToolBarPreview'
          Images = ImageListMain
          TabOrder = 0
          Wrapable = False
          object btnPreviewCopy: TToolButton
            Left = 1
            Top = 2
          end
          object btnPreviewSaveToFile: TToolButton
            Left = 24
            Top = 2
          end
          object btnPreviewClose: TToolButton
            Left = 47
            Hint = 'Close preview'
            Top = 2
            Caption = 'btnPreviewClose'
            ImageIndex = 26
            OnClick = actDataPreviewExecute
          end
        end
      end
      object ToolBarTree: TToolBar
        Left = 0
        Height = 22
        Top = 0
        Width = 169
        Caption = 'ToolBarTree'
        Images = ImageListMain
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Wrapable = False
        object btnTreeFavorites: TToolButton
          Left = 1
          Top = 2
        end
      end
    end
    object pnlRight: TPanel
      Left = 173
      Height = 286
      Top = 0
      Width = 651
      Align = alClient
      BevelOuter = bvNone
      ClientHeight = 286
      ClientWidth = 651
      TabOrder = 1
      object pnlFilterVT: TPanel
        Left = 0
        Height = 26
        Top = 260
        Width = 651
        Align = alBottom
        BevelOuter = bvNone
        ClientHeight = 26
        ClientWidth = 651
        TabOrder = 0
        Visible = False
        object lblFilterVT: TLabel
          Left = 36
          Height = 17
          Top = 6
          Width = 36
          Caption = 'Filter:'
          ParentColor = False
        end
        object lblFilterVTInfo: TLabel
          Left = 239
          Height = 17
          Top = 6
          Width = 90
          Caption = 'lblFilterVTInfo'
          ParentColor = False
        end
        object btnCloseFilterPanel: TSpeedButton
          Left = 5
          Height = 16
          Hint = 'Hides the filter panel'
          Top = 4
          Width = 16
          Flat = True
          OnClick = actFilterPanelExecute
        end
      end
      object PageControlMain: TPageControl
        Left = 0
        Height = 260
        Top = 0
        Width = 651
        ActivePage = tabHost
        Align = alClient
        Images = ImageListMain
        MultiLine = True
        PopupMenu = popupMainTabs
        TabIndex = 0
        TabOrder = 1
        OnChange = PageControlMainChange
        OnChanging = PageControlMainChanging
        OnContextPopup = PageControlMainContextPopup
        OnMouseUp = PageControlMainMouseUp
        Options = [nboMultiLine]
        object tabHost: TTabSheet
          Caption = 'Host'
          ClientHeight = 229
          ClientWidth = 641
          ImageIndex = 1
          object PageControlHost: TPageControl
            Left = 0
            Height = 229
            Top = 0
            Width = 641
            ActivePage = tabVariables
            Align = alClient
            Images = ImageListMain
            TabIndex = 1
            TabOrder = 0
            OnChange = PageControlHostChange
            object tabDatabases: TTabSheet
              Caption = 'Databases'
              ClientHeight = 198
              ClientWidth = 631
              ImageIndex = 5
              object ListDatabases: TVirtualStringTree
                Cursor = 63
                Left = 0
                Height = 198
                Top = 0
                Width = 631
                Align = alClient
                Header.AutoSizeIndex = 0
                Header.Columns = <                
                  item
                    Position = 0
                    Text = 'Database'
                    Width = 150
                  end                
                  item
                    Position = 1
                    Text = 'Size'
                    Width = 80
                  end                
                  item
                    Position = 2
                    Text = 'Items'
                  end                
                  item
                    Position = 3
                    Text = 'Last modification'
                  end                
                  item
                    Position = 4
                    Text = 'Tables'
                  end                
                  item
                    Position = 5
                    Text = 'Views'
                  end                
                  item
                    Position = 6
                    Text = 'Functions'
                  end                
                  item
                    Position = 7
                    Text = 'Procedures'
                  end                
                  item
                    Position = 8
                    Text = 'Triggers'
                  end                
                  item
                    Position = 9
                    Text = 'Events'
                  end                
                  item
                    Position = 10
                    Text = 'Default collation'
                  end>
                Header.Options = [hoColumnResize, hoDblClickResize, hoDrag, hoHotTrack, hoShowSortGlyphs, hoVisible]
                Header.ParentFont = True
                Header.PopupMenu = popupListHeader
                Header.SortColumn = 0
                Images = ImageListMain
                PopupMenu = popupHost
                TabOrder = 0
                TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScrollOnExpand, toAutoSort, toAutoTristateTracking, toAutoDeleteMovedNodes]
                TreeOptions.PaintOptions = [toHotTrack, toShowButtons, toShowDropmark, toShowHorzGridLines, toShowVertGridLines, toThemeAware, toUseBlendedImages, toGhostedIfUnfocused, toUseExplorerTheme, toHideTreeLinesIfThemed]
                TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect, toMultiSelect, toRightClickSelect]
                OnAfterPaint = AnyGridAfterPaint
                OnBeforeCellPaint = ListDatabasesBeforeCellPaint
                OnBeforePaint = ListDatabasesBeforePaint
                OnCompareNodes = AnyGridCompareNodes
                OnDblClick = ListDatabasesDblClick
                OnGetText = ListDatabasesGetText
                OnGetImageIndex = ListDatabasesGetImageIndex
                OnGetHint = AnyGridGetHint
                OnGetNodeDataSize = ListDatabasesGetNodeDataSize
                OnHeaderClick = AnyGridHeaderClick
                OnHeaderDraggedOut = AnyGridHeaderDraggedOut
                OnInitNode = ListDatabasesInitNode
              end
            end
            object tabVariables: TTabSheet
              Caption = 'Variables'
              ClientHeight = 198
              ClientWidth = 631
              ImageIndex = 137
              object ListVariables: TVirtualStringTree
                Left = 0
                Height = 198
                Top = 0
                Width = 631
                Align = alClient
                DragOperations = []
                Header.AutoSizeIndex = 2
                Header.Columns = <                
                  item
                    Position = 0
                    Text = 'Variable'
                    Width = 160
                  end                
                  item
                    Position = 1
                    Text = 'Session'
                    Width = 200
                  end                
                  item
                    Position = 2
                    Text = 'Global'
                    Width = 269
                  end>
                Header.Height = 20
                Header.Options = [hoAutoResize, hoColumnResize, hoDblClickResize, hoDrag, hoHotTrack, hoShowSortGlyphs, hoVisible]
                Header.ParentFont = True
                Header.PopupMenu = popupListHeader
                Header.SortColumn = 0
                HintMode = hmTooltip
                Images = ImageListMain
                IncrementalSearch = isInitializedOnly
                ParentShowHint = False
                PopupMenu = popupHost
                ShowHint = True
                TabOrder = 0
                TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScrollOnExpand, toAutoSort, toAutoTristateTracking, toAutoDeleteMovedNodes]
                TreeOptions.MiscOptions = [toToggleOnDblClick]
                TreeOptions.PaintOptions = [toHotTrack, toShowDropmark, toShowHorzGridLines, toShowVertGridLines, toThemeAware, toUseBlendedImages, toUseExplorerTheme]
                TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect, toRightClickSelect]
                OnAfterPaint = AnyGridAfterPaint
                OnBeforeCellPaint = ListVariablesBeforeCellPaint
                OnBeforePaint = HostListBeforePaint
                OnCompareNodes = AnyGridCompareNodes
                OnDblClick = ListVariablesDblClick
                OnGetText = HostListGetText
                OnPaintText = ListVariablesPaintText
                OnGetImageIndex = HostListGetImageIndex
                OnGetHint = AnyGridGetHint
                OnGetNodeDataSize = AnyGridGetNodeDataSize
                OnHeaderClick = AnyGridHeaderClick
                OnHeaderDraggedOut = AnyGridHeaderDraggedOut
                OnInitNode = AnyGridInitNode
              end
            end
            object tabStatus: TTabSheet
              Caption = 'Status'
              ClientHeight = 198
              ClientWidth = 631
              ImageIndex = 13
              object ListStatus: TVirtualStringTree
                Left = 0
                Height = 198
                Top = 0
                Width = 631
                Align = alClient
                DragOperations = []
                Header.AutoSizeIndex = 1
                Header.Columns = <                
                  item
                    Position = 0
                    Text = 'Variable'
                    Width = 160
                  end                
                  item
                    Alignment = taRightJustify
                    Position = 1
                    Text = 'Value'
                    Width = 269
                  end                
                  item
                    Alignment = taRightJustify
                    Position = 2
                    Text = 'Avg per hour'
                    Width = 100
                  end                
                  item
                    Position = 3
                    Text = 'Avg per second'
                    Width = 100
                  end>
                Header.Height = 20
                Header.Options = [hoAutoResize, hoColumnResize, hoDblClickResize, hoDrag, hoHotTrack, hoShowSortGlyphs, hoVisible]
                Header.ParentFont = True
                Header.PopupMenu = popupListHeader
                Header.SortColumn = 0
                HintMode = hmTooltip
                Images = ImageListMain
                IncrementalSearch = isInitializedOnly
                ParentShowHint = False
                PopupMenu = popupHost
                ShowHint = True
                TabOrder = 0
                TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScrollOnExpand, toAutoSort, toAutoTristateTracking, toAutoDeleteMovedNodes]
                TreeOptions.MiscOptions = [toToggleOnDblClick]
                TreeOptions.PaintOptions = [toHotTrack, toShowDropmark, toShowHorzGridLines, toShowVertGridLines, toThemeAware, toUseBlendedImages, toUseExplorerTheme]
                TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect, toRightClickSelect]
                OnAfterPaint = AnyGridAfterPaint
                OnBeforePaint = HostListBeforePaint
                OnCompareNodes = AnyGridCompareNodes
                OnGetText = HostListGetText
                OnGetImageIndex = HostListGetImageIndex
                OnGetHint = AnyGridGetHint
                OnGetNodeDataSize = AnyGridGetNodeDataSize
                OnHeaderClick = AnyGridHeaderClick
                OnHeaderDraggedOut = AnyGridHeaderDraggedOut
                OnInitNode = AnyGridInitNode
              end
            end
            object tabProcessList: TTabSheet
              Caption = 'Processes'
              ClientHeight = 198
              ClientWidth = 631
              ImageIndex = 57
              object spltProcessList: TSplitter
                Cursor = crVSplit
                Left = 0
                Height = 4
                Top = 125
                Width = 631
                Align = alBottom
                ResizeAnchor = akBottom
              end
              object ListProcesses: TVirtualStringTree
                Left = 0
                Height = 125
                Top = 0
                Width = 631
                Align = alClient
                Header.AutoSizeIndex = 7
                Header.Columns = <                
                  item
                    Alignment = taRightJustify
                    Position = 0
                    Text = 'id'
                    Width = 70
                  end                
                  item
                    Position = 1
                    Text = 'User'
                    Width = 80
                  end                
                  item
                    Position = 2
                    Text = 'Host'
                    Width = 80
                  end                
                  item
                    Position = 3
                    Text = 'DB'
                    Width = 80
                  end                
                  item
                    Position = 4
                    Text = 'Command'
                    Width = 80
                  end                
                  item
                    Position = 5
                    Text = 'Time'
                  end                
                  item
                    Position = 6
                    Text = 'State'
                  end                
                  item
                    Position = 7
                    Text = 'Info'
                    Width = 139
                  end>
                Header.Height = 20
                Header.Options = [hoAutoResize, hoColumnResize, hoDblClickResize, hoDrag, hoHotTrack, hoShowSortGlyphs, hoVisible]
                Header.ParentFont = True
                Header.PopupMenu = popupListHeader
                Header.SortColumn = 0
                Header.SortDirection = sdDescending
                HintMode = hmTooltip
                Images = ImageListMain
                IncrementalSearch = isInitializedOnly
                ParentShowHint = False
                PopupMenu = popupHost
                ShowHint = True
                TabOrder = 0
                TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScrollOnExpand, toAutoSort, toAutoTristateTracking, toAutoDeleteMovedNodes]
                TreeOptions.MiscOptions = [toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning]
                TreeOptions.PaintOptions = [toHotTrack, toShowDropmark, toShowHorzGridLines, toShowVertGridLines, toThemeAware, toUseBlendedImages, toUseExplorerTheme]
                TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect, toMultiSelect, toRightClickSelect]
                OnAfterPaint = AnyGridAfterPaint
                OnBeforeCellPaint = HostListBeforeCellPaint
                OnBeforePaint = HostListBeforePaint
                OnCompareNodes = AnyGridCompareNodes
                OnFocusChanged = ListProcessesFocusChanged
                OnGetText = HostListGetText
                OnGetImageIndex = HostListGetImageIndex
                OnGetHint = AnyGridGetHint
                OnGetNodeDataSize = AnyGridGetNodeDataSize
                OnHeaderClick = AnyGridHeaderClick
                OnHeaderDraggedOut = AnyGridHeaderDraggedOut
                OnInitNode = AnyGridInitNode
              end
              object pnlProcessViewBox: TPanel
                Left = 0
                Height = 69
                Top = 129
                Width = 631
                Align = alBottom
                BevelOuter = bvNone
                ClientHeight = 69
                ClientWidth = 631
                TabOrder = 1
                object pnlProcessView: TPanel
                  Left = 0
                  Height = 18
                  Top = 0
                  Width = 631
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Caption = 'Process SQL:'
                  ClientHeight = 18
                  ClientWidth = 631
                  TabOrder = 0
                  object lblExplainProcess: TLabel
                    Cursor = crHandPoint
                    Left = 87
                    Height = 17
                    Hint = 'Analyze this query'
                    Top = 2
                    Width = 54
                    Caption = 'EXPLAIN'
                    Enabled = False
                    ParentColor = False
                    OnClick = lblExplainProcessClick
                  end
                  object lblExplainProcessAnalyzer: TLabel
                    Cursor = crHandPoint
                    Left = 142
                    Height = 17
                    Hint = 'Analyze this query on MariaDB.org'
                    Top = 2
                    Width = 209
                    Caption = 'EXPLAIN Analyzer on MariaDB.org'
                    Enabled = False
                    ParentColor = False
                    OnClick = lblExplainProcessAnalyzerClick
                  end
                end
                inline SynMemoProcessView: TSynMemo
                  Cursor = crIBeam
                  Left = 0
                  Height = 51
                  Top = 18
                  Width = 631
                  Align = alClient
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Courier New'
                  Font.Pitch = fpFixed
                  Font.Quality = fqNonAntialiased
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 1
                  Gutter.LeftOffset = 2
                  Gutter.Width = 59
                  Gutter.MouseActions = <>
                  Highlighter = SynSQLSyn1
                  Keystrokes = <>
                  MouseActions = <>
                  MouseTextActions = <>
                  MouseSelActions = <>
                  Options = [eoAutoIndent, eoGroupUndo, eoShowScrollHint, eoSmartTabs, eoTabsToSpaces, eoDragDropEditing]
                  MouseOptions = [emDragDropEditing]
                  VisibleSpecialChars = [vscSpace, vscTabAtLast]
                  ReadOnly = True
                  RightEdge = 0
                  SelectedColor.BackPriority = 50
                  SelectedColor.ForePriority = 50
                  SelectedColor.FramePriority = 50
                  SelectedColor.BoldPriority = 50
                  SelectedColor.ItalicPriority = 50
                  SelectedColor.UnderlinePriority = 50
                  SelectedColor.StrikeOutPriority = 50
                  inline SynLeftGutterPartList1: TSynGutterPartList
                    object SynGutterMarks1: TSynGutterMarks
                      Width = 24
                      MouseActions = <>
                    end
                    object SynGutterLineNumber1: TSynGutterLineNumber
                      Width = 17
                      MouseActions = <>
                      MarkupInfo.Background = clBtnFace
                      MarkupInfo.Foreground = clNone
                      DigitCount = 2
                      ShowOnlyLineNumbersMultiplesOf = 1
                      ZeroStart = False
                      LeadingZeros = False
                    end
                    object SynGutterChanges1: TSynGutterChanges
                      Width = 4
                      MouseActions = <>
                      ModifiedColor = 59900
                      SavedColor = clGreen
                    end
                    object SynGutterSeparator1: TSynGutterSeparator
                      Width = 2
                      MouseActions = <>
                      MarkupInfo.Background = clWhite
                      MarkupInfo.Foreground = clGray
                    end
                    object SynGutterCodeFolding1: TSynGutterCodeFolding
                      MouseActions = <>
                      MarkupInfo.Background = clNone
                      MarkupInfo.Foreground = clGray
                      MouseActionsExpanded = <>
                      MouseActionsCollapsed = <>
                    end
                  end
                end
              end
            end
            object tabCommandStats: TTabSheet
              Caption = 'Command-Statistics'
              ClientHeight = 198
              ClientWidth = 631
              ImageIndex = 145
              object ListCommandStats: TVirtualStringTree
                Left = 0
                Height = 198
                Top = 0
                Width = 631
                Align = alClient
                Header.AutoSizeIndex = 4
                Header.Columns = <                
                  item
                    Position = 0
                    Text = 'Command-type'
                    Width = 120
                  end                
                  item
                    Alignment = taRightJustify
                    Position = 1
                    Text = 'Total count'
                    Width = 100
                  end                
                  item
                    Alignment = taRightJustify
                    Position = 2
                    Text = 'Average per hour'
                    Width = 100
                  end                
                  item
                    Position = 3
                    Text = 'Average per second'
                    Width = 100
                  end                
                  item
                    Position = 4
                    Text = 'Percentage'
                    Width = 209
                  end>
                Header.Height = 20
                Header.Options = [hoAutoResize, hoColumnResize, hoDblClickResize, hoDrag, hoHotTrack, hoShowSortGlyphs, hoVisible]
                Header.ParentFont = True
                Header.PopupMenu = popupListHeader
                Header.SortColumn = 1
                Header.SortDirection = sdDescending
                HintMode = hmTooltip
                Images = ImageListMain
                IncrementalSearch = isInitializedOnly
                ParentShowHint = False
                PopupMenu = popupHost
                ShowHint = True
                TabOrder = 0
                TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScrollOnExpand, toAutoSort, toAutoTristateTracking, toAutoDeleteMovedNodes]
                TreeOptions.MiscOptions = [toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning]
                TreeOptions.PaintOptions = [toHotTrack, toShowButtons, toShowDropmark, toShowHorzGridLines, toShowVertGridLines, toThemeAware, toUseBlendedImages, toUseExplorerTheme]
                TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect]
                OnAfterPaint = AnyGridAfterPaint
                OnBeforeCellPaint = HostListBeforeCellPaint
                OnBeforePaint = HostListBeforePaint
                OnCompareNodes = AnyGridCompareNodes
                OnGetText = HostListGetText
                OnGetImageIndex = HostListGetImageIndex
                OnGetHint = AnyGridGetHint
                OnGetNodeDataSize = AnyGridGetNodeDataSize
                OnHeaderClick = AnyGridHeaderClick
                OnHeaderDraggedOut = AnyGridHeaderDraggedOut
                OnInitNode = AnyGridInitNode
              end
            end
          end
        end
        object tabDatabase: TTabSheet
          Caption = 'Database'
          ClientHeight = 229
          ClientWidth = 641
          ImageIndex = 5
          object ListTables: TVirtualStringTree
            Left = 0
            Height = 229
            Top = 0
            Width = 641
            Align = alClient
            EditDelay = 500
            Header.AutoSizeIndex = -1
            Header.Columns = <            
              item
                Position = 0
                Text = 'Name'
                Width = 120
              end            
              item
                Position = 1
                Text = 'Rows'
                Width = 70
              end            
              item
                Position = 2
                Text = 'Size'
                Width = 70
              end            
              item
                Position = 3
                Text = 'Created'
                Width = 120
              end            
              item
                Position = 4
                Text = 'Updated'
                Width = 120
              end            
              item
                Position = 5
                Text = 'Engine'
                Width = 70
              end            
              item
                Position = 6
                Text = 'Comment'
                Width = 100
              end            
              item
                Position = 7
                Text = 'Version'
              end            
              item
                Position = 8
                Text = 'Row format'
              end            
              item
                Alignment = taRightJustify
                Position = 9
                Text = 'Avg row length'
                Width = 70
              end            
              item
                Alignment = taRightJustify
                Position = 10
                Text = 'Max data length'
                Width = 70
              end            
              item
                Alignment = taRightJustify
                Position = 11
                Text = 'Index length'
                Width = 70
              end            
              item
                Alignment = taRightJustify
                Position = 12
                Text = 'Data free'
                Width = 70
              end            
              item
                Alignment = taRightJustify
                Position = 13
                Text = 'Auto increment'
                Width = 90
              end            
              item
                Position = 14
                Text = 'Check time'
                Width = 120
              end            
              item
                Position = 15
                Text = 'Collation'
                Width = 70
              end            
              item
                Position = 16
                Text = 'Checksum'
                Width = 70
              end            
              item
                Position = 17
                Text = 'Create options'
                Width = 70
              end            
              item
                Position = 18
                Text = 'Type'
              end>
            Header.Height = 20
            Header.Options = [hoColumnResize, hoDblClickResize, hoDrag, hoHotTrack, hoShowSortGlyphs, hoVisible]
            Header.ParentFont = True
            Header.PopupMenu = popupListHeader
            Header.SortColumn = 0
            HintMode = hmTooltip
            Images = ImageListMain
            IncrementalSearch = isInitializedOnly
            ParentShowHint = False
            PopupMenu = popupDB
            ShowHint = True
            TabOrder = 0
            TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScrollOnExpand, toAutoTristateTracking, toAutoDeleteMovedNodes]
            TreeOptions.MiscOptions = [toEditable, toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning, toEditOnClick]
            TreeOptions.PaintOptions = [toHotTrack, toShowDropmark, toShowHorzGridLines, toShowVertGridLines, toThemeAware, toUseBlendedImages, toUseExplorerTheme]
            TreeOptions.SelectionOptions = [toFullRowSelect, toMultiSelect, toRightClickSelect]
            OnAfterPaint = AnyGridAfterPaint
            OnBeforeCellPaint = ListTablesBeforeCellPaint
            OnBeforePaint = ListTablesBeforePaint
            OnChange = ListTablesChange
            OnCompareNodes = AnyGridCompareNodes
            OnDblClick = ListTablesDblClick
            OnEditing = ListTablesEditing
            OnGetText = ListTablesGetText
            OnGetImageIndex = ListTablesGetImageIndex
            OnGetHint = AnyGridGetHint
            OnGetNodeDataSize = ListTablesGetNodeDataSize
            OnHeaderClick = AnyGridHeaderClick
            OnHeaderDraggedOut = AnyGridHeaderDraggedOut
            OnInitNode = ListTablesInitNode
            OnKeyPress = ListTablesKeyPress
            OnNewText = ListTablesNewText
          end
        end
        object tabEditor: TTabSheet
          Caption = 'Table'
          ImageIndex = 14
        end
        object tabData: TTabSheet
          Caption = 'Data'
          ClientHeight = 229
          ClientWidth = 641
          ImageIndex = 41
          object lblSorryNoData: TLabel
            Left = 0
            Height = 138
            Top = 91
            Width = 641
            Align = alClient
            Alignment = taCenter
            Caption = 'No data available for this item.'
            Layout = tlCenter
            ParentColor = False
            WordWrap = True
          end
          object pnlDataTop: TPanel
            Left = 0
            Height = 25
            Top = 0
            Width = 641
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 1
            ClientHeight = 25
            ClientWidth = 641
            TabOrder = 0
            object lblDataTop: TLabel
              Left = 1
              Height = 23
              Top = 1
              Width = 359
              Align = alLeft
              Anchors = [akTop, akLeft, akRight, akBottom]
              AutoSize = False
              Caption = 'Data'
              Layout = tlCenter
              ParentColor = False
              WordWrap = True
            end
            object tlbDataButtons: TToolBar
              Left = 572
              Height = 23
              Top = 1
              Width = 68
              Align = alRight
              AutoSize = True
              ButtonHeight = 22
              ButtonWidth = 67
              Caption = 'tlbDataButtons'
              Images = ImageListMain
              List = True
              ParentShowHint = False
              ShowCaptions = True
              ShowHint = True
              TabOrder = 0
              Wrapable = False
              object tbtnDataNext: TToolButton
                Left = 1
                Top = 2
              end
              object tbtnDataShowAll: TToolButton
                Left = 1
                Top = 24
              end
              object ToolButton2: TToolButton
                Left = 1
                Top = 46
                Width = 67
                Caption = 'ToolButton2'
                ImageIndex = 108
                Style = tbsSeparator
              end
              object tbtnDataSorting: TToolButton
                Left = 1
                Top = 54
                AllowAllUp = True
                Caption = 'Sorting'
                ImageIndex = 107
                OnClick = btnDataClick
              end
              object tbtnDataColumns: TToolButton
                Left = 1
                Top = 79
                AllowAllUp = True
                Caption = 'Columns'
                ImageIndex = 107
                OnClick = btnDataClick
              end
              object tbtnDataFilter: TToolButton
                Left = 1
                Top = 104
                AllowAllUp = True
                Caption = 'Filter'
                ImageIndex = 107
                OnClick = btnDataClick
              end
            end
          end
          object pnlFilter: TPanel
            Left = 0
            Height = 66
            Top = 25
            Width = 641
            Align = alTop
            BevelOuter = bvNone
            ClientHeight = 66
            ClientWidth = 641
            TabOrder = 1
            Visible = False
            object lblTableFilter: TLabel
              Left = 408
              Height = 17
              Top = 0
              Width = 158
              Anchors = [akTop, akRight]
              Caption = 'Create multi column filter:'
              ParentColor = False
            end
            object lblRecentFilters: TLabel
              Left = 1
              Height = 17
              Top = 3
              Width = 84
              Caption = 'Recent filters:'
              ParentColor = False
            end
            object btnFilterApply: TButton
              Left = 478
              Height = 22
              Top = 41
              Width = 76
              Anchors = [akTop, akRight]
              TabOrder = 2
            end
            object btnFilterClear: TButton
              Left = 558
              Height = 22
              Top = 41
              Width = 76
              Anchors = [akTop, akRight]
              TabOrder = 3
            end
            inline SynMemoFilter: TSynMemo
              Cursor = crIBeam
              Left = 0
              Height = 42
              Top = 21
              Width = 475
              Anchors = [akTop, akLeft, akRight, akBottom]
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Pitch = fpFixed
              Font.Quality = fqNonAntialiased
              ParentColor = False
              ParentFont = False
              PopupMenu = popupFilter
              TabOrder = 0
              Gutter.LeftOffset = 10
              Gutter.Visible = False
              Gutter.Width = 67
              Gutter.MouseActions = <>
              Highlighter = SynSQLSyn1
              Keystrokes = <>
              MouseActions = <>
              MouseTextActions = <>
              MouseSelActions = <>
              Options = [eoAutoIndent, eoGroupUndo, eoKeepCaretX, eoShowScrollHint, eoTabIndent, eoDragDropEditing]
              MouseOptions = [emDragDropEditing]
              VisibleSpecialChars = [vscSpace, vscTabAtLast]
              RightEdge = 0
              ScrollBars = ssVertical
              SelectedColor.BackPriority = 50
              SelectedColor.ForePriority = 50
              SelectedColor.FramePriority = 50
              SelectedColor.BoldPriority = 50
              SelectedColor.ItalicPriority = 50
              SelectedColor.UnderlinePriority = 50
              SelectedColor.StrikeOutPriority = 50
              OnStatusChange = SynMemoFilterStatusChange
              inline SynLeftGutterPartList1: TSynGutterPartList
                object SynGutterMarks1: TSynGutterMarks
                  Width = 24
                  MouseActions = <>
                end
                object SynGutterLineNumber1: TSynGutterLineNumber
                  Width = 17
                  MouseActions = <>
                  MarkupInfo.Background = clBtnFace
                  MarkupInfo.Foreground = clNone
                  DigitCount = 2
                  ShowOnlyLineNumbersMultiplesOf = 1
                  ZeroStart = False
                  LeadingZeros = False
                end
                object SynGutterChanges1: TSynGutterChanges
                  Width = 4
                  MouseActions = <>
                  ModifiedColor = 59900
                  SavedColor = clGreen
                end
                object SynGutterSeparator1: TSynGutterSeparator
                  Width = 2
                  MouseActions = <>
                  MarkupInfo.Background = clWhite
                  MarkupInfo.Foreground = clGray
                end
                object SynGutterCodeFolding1: TSynGutterCodeFolding
                  MouseActions = <>
                  MarkupInfo.Background = clNone
                  MarkupInfo.Foreground = clGray
                  MouseActionsExpanded = <>
                  MouseActionsCollapsed = <>
                end
              end
            end
            object editFilterSearch: TEdit
              Left = 478
              Height = 29
              Top = 15
              Width = 156
              Anchors = [akTop, akRight]
              OnChange = editFilterSearchChange
              OnEnter = editFilterSearchEnter
              OnExit = editFilterSearchExit
              TabOrder = 1
            end
            object comboRecentFilters: TComboBox
              Left = 77
              Height = 31
              Top = 0
              Width = 398
              Anchors = [akTop, akLeft, akRight]
              ItemHeight = 0
              OnSelect = LoadRecentFilter
              Style = csDropDownList
              TabOrder = 4
            end
          end
          object DataGrid: TVirtualStringTree
            Left = 0
            Height = 138
            Top = 91
            Width = 641
            Align = alClient
            AutoScrollDelay = 50
            EditDelay = 0
            Header.AutoSizeIndex = -1
            Header.Columns = <>
            Header.Height = 20
            Header.Images = ImageListMain
            Header.MainColumn = -1
            Header.Options = [hoColumnResize, hoDblClickResize, hoDrag, hoHotTrack, hoShowHint, hoShowImages, hoVisible]
            Header.ParentFont = True
            IncrementalSearch = isInitializedOnly
            LineStyle = lsSolid
            PopupMenu = popupDataGrid
            TabOrder = 2
            TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoScrollOnExpand, toAutoTristateTracking, toAutoDeleteMovedNodes]
            TreeOptions.MiscOptions = [toEditable, toFullRepaintOnResize, toGridExtensions, toInitOnSave, toToggleOnDblClick, toWheelPanning, toVariableNodeHeight, toEditOnClick]
            TreeOptions.PaintOptions = [toShowButtons, toShowDropmark, toShowHorzGridLines, toShowVertGridLines, toThemeAware, toUseBlendedImages, toAlwaysHideSelection]
            TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect, toMultiSelect, toRightClickSelect]
            WantTabs = True
            OnAfterCellPaint = AnyGridAfterCellPaint
            OnBeforeCellPaint = AnyGridBeforeCellPaint
            OnBeforePaint = DataGridBeforePaint
            OnChange = AnyGridChange
            OnColumnResize = DataGridColumnResize
            OnCreateEditor = AnyGridCreateEditor
            OnEditCancelled = AnyGridEditCancelled
            OnEdited = AnyGridEdited
            OnEditing = AnyGridEditing
            OnEnter = ValidateControls
            OnExit = ValidateControls
            OnFocusChanged = AnyGridFocusChanged
            OnFocusChanging = AnyGridFocusChanging
            OnGetText = AnyGridGetText
            OnPaintText = AnyGridPaintText
            OnGetNodeDataSize = AnyGridGetNodeDataSize
            OnHeaderClick = DataGridHeaderClick
            OnInitNode = AnyGridInitNode
            OnKeyDown = AnyGridKeyDown
            OnMouseUp = AnyGridMouseUp
            OnMouseWheel = AnyGridMouseWheel
            OnNewText = AnyGridNewText
          end
        end
        object tabQuery: TTabSheet
          Caption = 'Query'
          ClientHeight = 229
          ClientWidth = 641
          ImageIndex = 57
          object spltQuery: TSplitter
            Cursor = crVSplit
            Left = 0
            Height = 4
            Top = 96
            Width = 641
            Align = alTop
            AutoSnap = False
            ResizeAnchor = akTop
          end
          object pnlQueryMemo: TPanel
            Left = 0
            Height = 96
            Top = 0
            Width = 641
            Align = alTop
            BevelOuter = bvNone
            ClientHeight = 96
            ClientWidth = 641
            TabOrder = 0
            object spltQueryHelpers: TSplitter
              Left = 446
              Height = 96
              Top = 0
              Width = 4
              Align = alRight
              ResizeAnchor = akRight
            end
            inline SynMemoQuery: TSynMemo
              Cursor = crIBeam
              Left = 0
              Height = 96
              Top = 0
              Width = 446
              Align = alClient
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Pitch = fpFixed
              Font.Quality = fqNonAntialiased
              ParentColor = False
              ParentFont = False
              PopupMenu = popupQuery
              TabOrder = 0
              OnDragDrop = SynMemoQueryDragDrop
              OnDragOver = SynMemoQueryDragOver
              OnKeyPress = SynMemoQueryKeyPress
              Gutter.LeftOffset = 2
              Gutter.Width = 59
              Gutter.MouseActions = <>
              Highlighter = SynSQLSyn1
              Keystrokes = <>
              MouseActions = <>
              MouseTextActions = <>
              MouseSelActions = <>
              Options = [eoAutoIndent, eoGroupUndo, eoKeepCaretX, eoShowScrollHint, eoTabIndent]
              VisibleSpecialChars = [vscSpace, vscTabAtLast]
              RightEdge = 0
              SelectedColor.BackPriority = 50
              SelectedColor.ForePriority = 50
              SelectedColor.FramePriority = 50
              SelectedColor.BoldPriority = 50
              SelectedColor.ItalicPriority = 50
              SelectedColor.UnderlinePriority = 50
              SelectedColor.StrikeOutPriority = 50
              TabWidth = 3
              OnDropFiles = SynMemoQueryDropFiles
              OnReplaceText = SynMemoQueryReplaceText
              OnStatusChange = SynMemoQueryStatusChange
              inline SynLeftGutterPartList1: TSynGutterPartList
                object SynGutterMarks1: TSynGutterMarks
                  Width = 24
                  MouseActions = <>
                end
                object SynGutterLineNumber1: TSynGutterLineNumber
                  Width = 17
                  MouseActions = <>
                  MarkupInfo.Background = clBtnFace
                  MarkupInfo.Foreground = clNone
                  DigitCount = 2
                  ShowOnlyLineNumbersMultiplesOf = 1
                  ZeroStart = False
                  LeadingZeros = False
                end
                object SynGutterChanges1: TSynGutterChanges
                  Width = 4
                  MouseActions = <>
                  ModifiedColor = 59900
                  SavedColor = clGreen
                end
                object SynGutterSeparator1: TSynGutterSeparator
                  Width = 2
                  MouseActions = <>
                  MarkupInfo.Background = clWhite
                  MarkupInfo.Foreground = clGray
                end
                object SynGutterCodeFolding1: TSynGutterCodeFolding
                  MouseActions = <>
                  MarkupInfo.Background = clNone
                  MarkupInfo.Foreground = clGray
                  MouseActionsExpanded = <>
                  MouseActionsCollapsed = <>
                end
              end
            end
            object treeQueryHelpers: TVirtualStringTree
              Left = 450
              Height = 96
              Top = 0
              Width = 191
              Align = alRight
              Constraints.MinWidth = 10
              DragMode = dmAutomatic
              DragType = dtVCL
              Header.AutoSizeIndex = 0
              Header.Columns = <              
                item
                  Position = 0
                  Text = 'Main column'
                  Width = 74
                end              
                item
                  Position = 1
                  Text = 'Attributes'
                  Width = 100
                end>
              Header.Options = [hoAutoResize, hoColumnResize, hoDrag, hoShowSortGlyphs]
              Header.ParentFont = True
              Images = ImageListMain
              IncrementalSearch = isAll
              PopupMenu = popupQueryHelpers
              RootNodeCount = 6
              TabOrder = 1
              TextMargin = 0
              TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScrollOnExpand, toAutoSpanColumns, toAutoTristateTracking, toAutoDeleteMovedNodes]
              TreeOptions.MiscOptions = [toCheckSupport, toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning, toEditOnClick]
              TreeOptions.PaintOptions = [toHotTrack, toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toThemeAware, toUseBlendedImages, toUseExplorerTheme, toHideTreeLinesIfThemed]
              TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect, toMultiSelect, toRightClickSelect]
              OnBeforeCellPaint = treeQueryHelpersBeforeCellPaint
              OnChecking = treeQueryHelpersChecking
              OnContextPopup = treeQueryHelpersContextPopup
              OnCreateEditor = treeQueryHelpersCreateEditor
              OnDblClick = treeQueryHelpersDblClick
              OnEditing = treeQueryHelpersEditing
              OnFocusChanging = treeQueryHelpersFocusChanging
              OnFreeNode = treeQueryHelpersFreeNode
              OnGetText = treeQueryHelpersGetText
              OnPaintText = treeQueryHelpersPaintText
              OnGetImageIndex = treeQueryHelpersGetImageIndex
              OnInitChildren = treeQueryHelpersInitChildren
              OnInitNode = treeQueryHelpersInitNode
              OnNewText = treeQueryHelpersNewText
              OnNodeClick = treeQueryHelpersNodeClick
              OnResize = treeQueryHelpersResize
            end
          end
          object QueryGrid: TVirtualStringTree
            Left = 0
            Height = 129
            Top = 100
            Width = 641
            Align = alClient
            AutoScrollDelay = 50
            EditDelay = 0
            Header.AutoSizeIndex = -1
            Header.Columns = <>
            Header.Height = 20
            Header.Images = ImageListMain
            Header.MainColumn = -1
            Header.Options = [hoColumnResize, hoDblClickResize, hoDrag, hoHotTrack, hoShowHint, hoShowImages, hoShowSortGlyphs]
            Header.ParentFont = True
            IncrementalSearch = isAll
            LineStyle = lsSolid
            PopupMenu = popupDataGrid
            TabOrder = 1
            TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoScrollOnExpand, toAutoTristateTracking, toAutoDeleteMovedNodes]
            TreeOptions.MiscOptions = [toEditable, toFullRepaintOnResize, toGridExtensions, toInitOnSave, toToggleOnDblClick, toWheelPanning, toVariableNodeHeight, toEditOnClick]
            TreeOptions.PaintOptions = [toShowButtons, toShowDropmark, toShowHorzGridLines, toShowVertGridLines, toThemeAware, toUseBlendedImages, toAlwaysHideSelection]
            TreeOptions.SelectionOptions = [toExtendedFocus, toMultiSelect, toRightClickSelect]
            Visible = False
            WantTabs = True
            OnAfterCellPaint = AnyGridAfterCellPaint
            OnAfterPaint = AnyGridAfterPaint
            OnBeforeCellPaint = AnyGridBeforeCellPaint
            OnChange = AnyGridChange
            OnCompareNodes = AnyGridCompareNodes
            OnCreateEditor = AnyGridCreateEditor
            OnEditCancelled = AnyGridEditCancelled
            OnEdited = AnyGridEdited
            OnEditing = AnyGridEditing
            OnEndOperation = AnyGridEndOperation
            OnEnter = ValidateControls
            OnExit = ValidateControls
            OnFocusChanged = AnyGridFocusChanged
            OnFocusChanging = AnyGridFocusChanging
            OnGetText = AnyGridGetText
            OnPaintText = AnyGridPaintText
            OnGetNodeDataSize = AnyGridGetNodeDataSize
            OnHeaderClick = AnyGridHeaderClick
            OnInitNode = AnyGridInitNode
            OnKeyDown = AnyGridKeyDown
            OnMouseUp = AnyGridMouseUp
            OnMouseWheel = AnyGridMouseWheel
            OnNewText = AnyGridNewText
            OnStartOperation = AnyGridStartOperation
          end
        end
      end
    end
  end
  object ProgressBarStatus: TProgressBar
    Left = 535
    Height = 17
    Top = 405
    Width = 81
    Step = 1
    TabOrder = 3
  end
  object ControlBarMain: TControlBar
    Left = 0
    Height = 54
    Top = 0
    Width = 824
    Align = alTop
    AutoSize = True
    BevelInner = bvNone
    BevelOuter = bvNone
    TabOrder = 4
    object ToolBarMainButtons: TToolBar
      Left = 13
      Height = 22
      Top = 17
      Width = 763
      Align = alNone
      AutoSize = True
      Caption = 'ToolBarMainButtons'
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ImageListMain
      TabOrder = 0
      Wrapable = False
      object ToolButton9: TToolButton
        Left = 1
        Top = 0
        AutoSize = True
        DropdownMenu = menuConnections
        Style = tbsDropDown
      end
      object btnExit: TToolButton
        Left = 36
        Top = 0
      end
      object tlbSep1: TToolButton
        Left = 59
        Height = 22
        Top = 0
        Caption = 'tlbSep1'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 67
        Top = 0
        AutoSize = True
      end
      object ToolButton6: TToolButton
        Left = 90
        Top = 0
        AutoSize = True
      end
      object ToolButton14: TToolButton
        Left = 113
        Hint = 'Undo'
        Top = 0
      end
      object ToolButton12: TToolButton
        Left = 136
        Top = 0
      end
      object tlbSep2: TToolButton
        Left = 159
        Height = 22
        Top = 0
        Caption = 'tlbSep2'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ButtonRefresh: TToolButton
        Left = 167
        Top = 0
        AutoSize = True
        DropdownMenu = popupRefresh
        Style = tbsDropDown
      end
      object ButtonUserManager: TToolButton
        Left = 202
        Top = 0
        AutoSize = True
      end
      object ButtonImportTextfile: TToolButton
        Left = 225
        Top = 0
        AutoSize = True
      end
      object ButtonExport: TToolButton
        Left = 248
        Top = 0
        AutoSize = True
      end
      object tlbSep6: TToolButton
        Left = 271
        Height = 22
        Top = 0
        Caption = 'tlbSep6'
        ImageIndex = 97
        Style = tbsSeparator
      end
      object btnSQLHelp: TToolButton
        Left = 279
        Top = 0
      end
      object ToolButton3: TToolButton
        Left = 302
        Top = 0
      end
      object ToolButton4: TToolButton
        Left = 325
        Top = 0
      end
      object ToolButton7: TToolButton
        Left = 348
        Top = 0
      end
      object ToolButton8: TToolButton
        Left = 371
        Top = 0
      end
      object ToolButton10: TToolButton
        Left = 394
        Top = 0
      end
      object ToolButton1: TToolButton
        Left = 417
        Top = 0
      end
      object btnExecuteQuery: TToolButton
        Left = 440
        Top = 0
        DropdownMenu = popupExecuteQuery
        Style = tbsDropDown
      end
      object btnLoadSQL: TToolButton
        Left = 475
        Top = 0
        DropdownMenu = PopupQueryLoad
        Style = tbsDropDown
      end
      object btnSaveSQL: TToolButton
        Left = 510
        Top = 0
      end
      object btnSaveSQLSnippet: TToolButton
        Left = 533
        Top = 0
      end
      object btnQueryFind: TToolButton
        Left = 556
        Top = 0
      end
      object btnQueryReplace: TToolButton
        Left = 579
        Top = 0
      end
      object btnReformatSQL: TToolButton
        Left = 602
        Top = 0
      end
      object btnStopOnErrors: TToolButton
        Left = 625
        Top = 0
      end
      object btnBlobAsText: TToolButton
        Left = 648
        Top = 0
      end
      object btnQueryWordwrap: TToolButton
        Left = 671
        Top = 0
      end
      object btnSetDelimiter: TToolButton
        Left = 694
        Top = 0
      end
      object btnCancelOperation: TToolButton
        Left = 717
        Top = 0
      end
    end
  end
  object MainMenu1: TMainMenu
    Images = ImageListMain
    left = 424
    top = 152
    object MainMenuFile: TMenuItem
      Caption = 'File'
      Hint = 'File related commands'
      OnClick = MainMenuFileClick
      object Sessionmanager1: TMenuItem
      end
      object menuConnectTo: TMenuItem
        Caption = 'Connect to'
      end
      object FileNewItem: TMenuItem
      end
      object Newquerytab1: TMenuItem
      end
      object Closetab1: TMenuItem
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object LoadSQLfile2: TMenuItem
      end
      object RunSQLfiles1: TMenuItem
      end
      object Save1: TMenuItem
      end
      object Saveassnippet1: TMenuItem
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ExportSettings1: TMenuItem
      end
      object Importsettings1: TMenuItem
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object FileExitItem: TMenuItem
        ShortCut = 32883
      end
    end
    object MainMenuEdit: TMenuItem
      Caption = 'Edit'
      Hint = 'Edit commands'
      object CopyItem: TMenuItem
      end
      object PasteItem: TMenuItem
      end
      object Cut1: TMenuItem
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object actSelectAll1: TMenuItem
      end
      object Inverseselection1: TMenuItem
      end
      object actFindInVT1: TMenuItem
        AutoCheck = True
      end
      object ReformatSQL2: TMenuItem
      end
    end
    object MainMenuSearch: TMenuItem
      Caption = 'Search'
      object Findtext1: TMenuItem
      end
      object actQueryFindAgain1: TMenuItem
      end
      object Replacetext1: TMenuItem
      end
      object actFindTextOnServer1: TMenuItem
      end
    end
    object MainMenuTools: TMenuItem
      Caption = 'Tools'
      object Previoustab1: TMenuItem
      end
      object Nexttab1: TMenuItem
      end
      object Previousresulttab1: TMenuItem
      end
      object Nextresulttab1: TMenuItem
      end
      object Flush1: TMenuItem
        Caption = 'Flush'
        object MenuFlushHosts: TMenuItem
        end
        object MenuFlushLogs: TMenuItem
        end
        object FlushUserPrivileges1: TMenuItem
        end
        object MenuFlushTables: TMenuItem
        end
        object MenuFlushTableswithreadlock: TMenuItem
        end
        object MenuFlushStatus: TMenuItem
        end
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object MenuUserManager: TMenuItem
      end
      object menuMaintenance: TMenuItem
      end
      object Bulktableeditor1: TMenuItem
      end
      object Launchcommandline1: TMenuItem
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object ExportdatabaseasSQL1: TMenuItem
      end
      object Exportgridrows1: TMenuItem
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object ImportCSVfile1: TMenuItem
      end
      object InsertfilesintoTEXTBLOBfields1: TMenuItem
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object MenuPreferences: TMenuItem
      end
    end
    object MainMenuGoto: TMenuItem
      Caption = 'Go to'
      object actGotoFilter1: TMenuItem
      end
      object actGotoDbTree1: TMenuItem
      end
      object actGotoTab11: TMenuItem
      end
      object actGotoTab12: TMenuItem
      end
      object actGotoTab31: TMenuItem
      end
      object actGotoTab41: TMenuItem
      end
      object actGotoTab51: TMenuItem
      end
    end
    object MainMenuHelp: TMenuItem
      Caption = 'Help'
      Hint = 'Help topics'
      object menuSQLHelp1: TMenuItem
      end
      object menuReadme: TMenuItem
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object menuUpdateCheck: TMenuItem
      end
      object menuDownload: TMenuItem
      end
      object menuSupportForum: TMenuItem
      end
      object menuFeaturetracker: TMenuItem
      end
      object menuAbout: TMenuItem
      end
    end
  end
  object menuConnections: TPopupMenu
    Images = ImageListMain
    OnPopup = menuConnectionsPopup
    left = 344
    top = 200
  end
  object ImageListMain: TImageList
    DrawingStyle = dsTransparent
    left = 504
    top = 104
    Bitmap = {
      4C69C10000001000000010000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF244C27FF000200FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF397D3FFF27582BFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0A150CFF28522DFF417F
      47FF4D9E55FF4EA558FF499D51FF43954BFF5EA766FF59A160FF1C4620FF0000
      00FF000000FF000000FF000000FF000000FF152A17FF3F7F46FF77C282FF88CA
      91FF93D09BFF94D19DFF8FCF98FF8BCB93FF86C98EFF7EC386FF4C9452FF1437
      16FF000000FF000000FF000000FF0A150CFF3E7D45FF84C98DFF9AD4A3FF8ECE
      97FF91CF99FF8CCC94FF87CA8FFF82C58AFF7CC384FF77C07DFF458C4AFF1135
      12FF000000FF000000FF000000FF274F2BFF73BE7CFF97D2A0FF93CF9BFF85C7
      8CFF5CA663FF37853EFF327C38FF2C7431FF478F4DFF438A48FF113714FF0000
      00FF000000FF000000FF000000FF3C7A42FF7EC288FF8CCC94FF82C389FF347A
      3AFF1D4821FF000000FF000000FF000000FF1B521FFF123B15FF000000FF0000
      00FF000000FF000000FF000000FF44914CFF43944BFF3D8B45FF357C3CFF1B40
      1DFF000000FF000000FF000000FF000000FF0D2C0EFF000000FF1F4122FF1C3E
      20FF1A3B1DFF19381CFF163419FF19391CFF173619FF143317FF122F15FF112C
      12FF000200FF305D35FF000000FF000000FF000000FF000000FF26522AFF408D
      47FF3D8B45FF38833EFF2F7435FF000000FF000000FF000000FF000000FF0000
      00FF3C7743FF4D9955FF000000FF000000FF000000FF28572CFF3B8242FF85C5
      8DFF87C98EFF6DB274FF205323FF000000FF000000FF000000FF000000FF376D
      3EFF79C784FF75C180FF52AA5CFF4CA255FF479A4FFF61AB69FF82C28AFF86C9
      8EFF81C588FF4E9654FF112E12FF000000FF000000FF000000FF326539FF77C3
      82FF9DD7A6FF9AD4A3FF96D29EFF91CF99FF8CCC94FF87CA8FFF78C181FF7CC3
      84FF5BA361FF1A481CFF030A03FF000000FF000000FF000000FF2E5D33FF71BC
      7AFF95D19EFF93CF9BFF8ECD95FF89CA90FF84C78AFF78BD80FF63AC6AFF4991
      4FFF18461CFF061508FF000000FF000000FF000000FF000000FF000000FF2A5B
      30FF64AF6CFF5FA966FF3B8A42FF35823CFF307935FF276A2CFF1B4D1EFF0E2B
      11FF020A03FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF27582BFF2F6F36FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000200FF173A1AFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7F7F7FFFC6C6C6FFC3C3C3FFBFBFBFFFBABA
      BAFFB5B5B5FFAFAFAFFF6E6E6EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF0C0C0CFF888888FFDCDCDCFFE6E3E3FFE1DEDCFFDFDCDCFFDFDC
      DBFFDEDBDBFFEEECECFFA4A4A4FF000000FF000000FF000000FF000000FF0000
      00FF393939FFB6B6B6FFDFDFDFFFEAEAEAFFCFCAC9FFCBC5C4FFCAC3C2FFC8C2
      C0FFC7C0C0FFDCD9D8FF9D9D9DFFD1D1D1FFD3D3D3FFD0D0D0FFCCCCCCFFC8C8
      C8FFC2C2C2FFBEBEBEFFB9B9B9FFB4B4B4FFAFAFAFFFA9A9A9FFA4A4A4FF9392
      92FF919090FFDBD7D6FF979797FFD3D3D3FFF1EFEFFFE2DFDFFFE2DFDFFFE1DF
      DEFFE1DEDDFFE0DDDCFFDFDCDBFFDEDBDBFFDEDBD9FFEDECEBFF9D9D9DFFC4BE
      BDFFC2BCBAFFDAD6D5FF909090FFCECECEFFE2DFDFFFAF7954FFB07954FFB07A
      55FFB17B56FFB27C56FFB37D57FFB47E58FFA6704BFFDCD8D7FF979797FF8C8C
      8CFF898989FFD9D5D4FF8A8A8AFFCACACAFFE1DFDEFFB07A55FFC38D66FFC58F
      68FFC89169FFCA936BFFCC956DFFCE976EFFA6704BFFDBD6D6FF909090FFC0BA
      B8FFBFB8B7FFD7D3D3FF838383FFC4C4C4FFE1DEDCFFB27B56FFC79069FFC992
      6BFFCB946CFFCD966EFFCF986FFFD19A71FFA6704BFFD9D5D4FF8A8A8AFF9FC8
      A3FF4EA854FFD7D3D1FF7C7C7CFFBFBFBFFFDFDCDCFFB37D57FFCB946CFFCD96
      6DFFCF986FFFD19A70FFD29B72FFD49D73FFA6704BFFD7D4D3FF838383FF39A0
      40FF359335FFD6D1D0FF767676FFB9B9B9FFDEDBDBFFB47E58FFCE976EFFD8AD
      90FFD9AE90FFD9AE90FFDAAE90FFD69F75FFA6704BFFD7D3D1FF7C7C7CFFBAB3
      B2FFBAB2B0FFD4D0CFFF717171FFB3B3B3FFE0DDDDFFA6704BFFA6704BFFA670
      4BFFA6704BFFA6704BFFA6704BFFA6704BFFA6704BFFDAD5D4FF767676FFB9B1
      B0FFB8B0AEFFD4CFCEFF6B6B6BFFADADADFFE4E2E2FFD7D5D5FFD5D3D2FFD1CE
      CDFFCAC3C2FFC8C2C1FFCDC9C8FFCCCACAFFCCCAC9FFD8D6D6FF727171FFB8B0
      ADFFB6AEADFFD3CECDFF666666FF5B5B5BFF818181FF7C7C7CFF787878FF7D7D
      7DFF9D9D9DFF999999FF7D7D7DFF838383FF868685FF868584FFA19F9EFFD3CE
      CDFFD3CECDFFE8E5E5FF626262FF000000FF000000FF000000FF3E3E3EFF6666
      66FFC3C1C0FFD4CFCEFF757575FF484848FF626262FF727272FF6E6E6EFF6969
      69FF656565FF616161FF4F4F4FFF000000FF000000FF0C0C0CFF919191FFD5D3
      D3FFE2E0DFFFDFDCDBFFE1DFDFFF696969FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF020202FF686868FF7C7C
      7CFF777777FF727272FF6E6E6EFF535353FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF1D1306FF6A4E2AFF030100FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF45321BFFB39A79FF050200FF000000FF000000FF0000
      00FF030101FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4A381DFFCFB699FF090602FF000000FF000000FF1A11
      04FF86643AFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4E3C21FFDEC9AEFF120B03FF000000FF160D02FFB396
      70FF8F724DFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF554125FFE7D5C0FF191005FF0F0902FFB19676FFBCA5
      89FF453825FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF5B4629FFEEDFCEFF3B270BFFA58968FFE7D6C2FF513E
      24FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF604B2EFFF1E2D4FFC5A987FFF5EBE0FF664D2CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000001FF000000FF655032FFF6EADDFFE1CDB3FF846944FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000111FF1016
      64FF202894FF090E54FF957952FFF0E0D0FF8D6F48FF060300FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000111FF242B9BFF3A44
      CFFF2F39BFFF3D4AD7FFD8BB99FFF6EAE1FF8B6D42FF221505FF010000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF111766FF3944CCFF0204
      21FF01052FFF3946D4FFDBBC9BFFEECCA5FF3E4ADEFF3841D1FF06093EFF0000
      00FF000000FF000000FF000000FF000000FF000000FF2D36B3FF171E76FF0000
      00FF0E1664FF404ED2FFCAA173FF3F4DD6FF0C1363FF262F9FFF272FA5FF0001
      05FF000000FF000000FF000000FF000000FF000000FF2731A3FF2E37B5FF1A23
      86FF3D48DDFF161F82FF1B248DFF2F37BBFF000002FF070C48FF353FC8FF0102
      12FF000000FF000000FF000000FF000000FF000000FF05083AFF2F3AC1FF353F
      CFFF141C75FF00010DFF171E7BFF333ECAFF00010CFF0F1662FF313BBEFF0001
      0BFF000000FF000000FF000000FF000000FF000000FF000000FF000111FF0101
      15FF000002FF000000FF070B44FF3E49D9FF252CA4FF3B45D1FF11176CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000105FF101767FF323BC2FF171F7EFF00000FFF0000
      00FF000000FF000000FF000000FF854F2FFFA46B43FFB1764AFFAE7448FFAF74
      48FFAE7349FFA46A3FFF54331BFF060302FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFA46C43FFDBDBDBFFDCD4CAFFDCD4CBFFDBD2
      CAFFD9D0C5FFD9D2C9FFCBA276FF7F5132FF070301FF000000FF000000FF0000
      00FF000000FF000000FF000000FFAE7248FFDDD5CEFFDBC1AAFFDBC3ADFFD8C0
      A8FFD5B79CFFDDD8D4FFD9C4A9FFCCA77FFF613E24FF000000FF000000FF0000
      00FF000000FF000000FF000000FFAE7247FFDDD6D0FFDBC4B1FFDBC5B1FFD9C2
      AEFFD7BDA3FFD5CAC0FFD9D4CCFFDBD7D4FFB18055FF000000FF000000FF0000
      00FF000000FF000000FF000000FFAE7247FFDDD7D1FFDBC7B6FFDBC5B6FFDBC4
      B1FFD8C0A9FFEAC29CFFE6BE95FFE4BA91FFE4BA91FFC89966FFC89767FFAE7F
      50FF5F3A1FFF060302FF000000FFAE7247FFDED7D2FFDDC9B9FFDDC9B9FFDCC7
      B6FFD9C3B0FFE5BD95FFFFFFFEFFFDF3E9FFFDF3EAFFFCF2E8FFFAEFE3FFFAF2
      E7FFEABA87FF915C3AFF080403FFAE7146FFDED7D0FFDEC9B9FFDCC9BAFFDCC8
      B9FFDBC5B5FFE4BA92FFFEF5EDFFFCDEC4FFFBE0C7FFF9DCC1FFF5D3B3FFFEF9
      F3FFFAE2C3FFECC092FF6F4628FFAC7146FFDED7D1FFDECABDFFDECBBEFFDECA
      BDFFDEC9BBFFE4BA91FFFEF6F0FFFCE2CDFFFCE3CDFFFADFC8FFF7D9BBFFF5E9
      DDFFFAF3EBFFFBF8F3FFC98151FFAF7046FFDBD5CFFFDECABDFFDECBBEFFDECA
      BDFFDEC9BBFFE4BA91FFFEF7F1FFFCE5D2FFFCE4D1FFFBE2CCFFF9DDC3FFF6D7
      BAFFF3D1AEFFFAEFE4FFCB8556FFB47047FFD0D1C9FFDECABDFFDECBBEFFDECA
      BDFFDEC9BBFFE4BA90FFFFF7F2FFFEE7D5FFFEE7D5FFFDE5D1FFFAE0CAFFF9DE
      C3FFF7D9BBFFFDF2E7FFCB8555FFA4653FFFDBD4CCFFD9D1CAFFD9D0C9FFDBD1
      CAFFDBD2CBFFE4B990FFFFF7F0FFFFE7D5FFFDE7D6FFFDE6D4FFFCE4D0FFFBE3
      CBFFFADCC1FFFEF3E8FFCB8454FF8F5634FFA2603BFFAD653AFFA45F39FFA65F
      39FFA45F39FFCA8350FFFFF7F1FFFFE9D9FFFFEADBFFFFE9D9FFFFE7D7FFFFE5
      D2FFFFE2CBFFFFF7F1FFCA8353FF000000FF000000FF000000FF000000FF0000
      00FF000000FFC8804FFFFBF5EEFFFFE9D9FFFFEADBFFFFE9D9FFFFE7D7FFFFE5
      D2FFFFE2CBFFFBF6EFFFCB8153FF000000FF000000FF000000FF000000FF0000
      00FF000000FFCF8151FFEFF1E7FFFFE9D9FFFFEADBFFFFE9D9FFFFE7D7FFFFE5
      D2FFFFE2CBFFEFF2E8FFCE8054FF000000FF000000FF000000FF000000FF0000
      00FF000000FFB97042FFFCF3ECFFFAF1E8FFFAF0E7FFFBF1E9FFFBF2EAFFFBF2
      EAFFFBF2EBFFFDF4EEFFC57B50FF000000FF000000FF000000FF000000FF0000
      00FF000000FF945531FFB1683DFFC77343FFBD6E40FFBE6E40FFBD6E40FFBD6E
      40FFBF6E41FFB2683CFFBF764CFF000000FF000000FF040F19FF1E6197FF1E61
      97FF1E6197FF1E6197FF1E6197FF1D5B8EFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF06121EFF164368FF1E6197FF3573A3FFB5EF
      FEFF7EDBF3FF7EDBF3FFB5EFFEFF2C6CA0FF1E6197FF133E61FF0A1F31FF0000
      00FF000000FF000000FF000000FF1B5585FF6FB1DAFF7CBEE4FF4C9CDFFFB4EE
      FDFF73D4F0FF73D4F0FFB4EEFDFF499ADEFF6CB3E0FF69AED9FF1D5D90FF0000
      00FF000000FF000000FF000000FF1E6197FF7DBEE4FF67B1DEFF489ADAFF4296
      DCFF4195DCFF4095DCFF4094DCFF3F94DBFF4F9DD6FF6AB1DEFF1E6197FF0000
      00FF000000FF000000FF000000FF1E6197FF7ABCE4FF63ADDDFF60AADCFF5CA7
      DAFF5AA6D9FF5AA6D9FF5AA6D9FF5AA6D9FF509ED7FF60A2D8FF1E6197FF0000
      00FF000000FF000000FF000000FF1E6197FF78BAE3FF5FA9DBFF58A4D9FF519F
      D7FF509ED7FF509ED7FF509ED7FF509ED7FF509ED7FF60A2D8FF1E6197FF0000
      00FF000000FF000000FF000000FF1E6197FF74B8E2FF5AA6D9FF56A3D8FF519F
      D7FF519DD5FF5F8AA8FF6287A0FF6286A0FF61859FFF67869EFF486680FF3838
      38FF373737FF353535FF252525FF1E6197FF71B6E1FF55A2D7FF519FD7FF4E9C
      D5FF5098CFFF7393ABFFF8F8F8FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF1F1F1FFEFEFEFFF2F2F2FFF1E6197FF6EB4E0FF509ED7FF4E9BD6FF4C97
      D4FF4D94CDFF7190A9FFF1F1F1FFB6B6B6FFB5B5B5FFB5B5B5FFB5B5B5FFB4B4
      B4FFB4B4B4FFE9E9E9FF2D2D2DFF1E6197FF6BB2DFFF4E9BD5FF4C97D3FF4993
      D1FF4A90CBFF6E8DA6FFF1F1F1FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFE8E8
      E8FFE7E7E7FFE8E8E8FF2B2B2BFF1E6197FF69B0DEFF4B96D3FF4992D2FF468E
      D0FF488BC9FF6D8AA4FFF1F1F1FFB5B5B5FFB4B4B4FFB4B4B4FFB3B3B3FFB3B3
      B3FFB3B3B3FFE8E8E8FF292929FF1E6197FF67ADDCFF4892D1FF468ED0FF448A
      CEFF4587C7FF6A87A2FFF0F0F0FFE8E8E8FFE8E8E8FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFE8E8E8FF272727FF1E6197FF66AADCFF468DCFFF448ACEFF4186
      CDFF4283C5FF6684A0FFF0F0F0FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB2B2B2FFE8E8E8FF262626FF184B73FF60A4D7FF63A7DAFF62A5D9FF60A3
      D8FF609ED1FF738DA3FFEFEFEFFFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE6E6
      E6FFE6E6E6FFE7E7E7FF242424FF081B2CFF19507BFF1E6197FF1E6197FF1E61
      97FF226194FF567187FFF7F7F7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEEEEEEFF242424FF000000FF000000FF000000FF000000FF0000
      00FF010101FF292929FF2E2E2EFF2C2C2CFF2B2B2BFF2A2A2AFF282828FF2727
      27FF252525FF242424FF1B1B1BFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF050505FF3E3E
      3EFF7F7F7FFF9A9A9AFFB4B4B4FFB1B1B1FF909090FF777777FF313131FF0202
      02FF000000FF000000FF000000FF000000FF000000FF1F1F1FFF999999FFD0D0
      D0FFE8E8E8FFF3F3F3FFFDFDFDFFFCFCFCFFEDEDEDFFE0E0E0FFC2C2C2FF8484
      84FF121212FF000000FF000000FF000000FF000000FF8B8B8BFFE1E1E1FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFCFCF
      CFFF6A6A6AFF000000FF000000FF000000FF000000FFAAAAAAFFF8F8F8FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFEAEA
      EAFF999999FF000000FF000000FF000000FF000000FFA8A8A8FFF7F7F7FFE7E7
      E7FFEFEFEFFFF6F6F6FFFBFBFBFFFAFAFAFFF0F0F0FFDEDEDEFFC3C3C3FFE6E6
      E6FF979797FF000000FF000000FF000000FF000000FFA6A6A6FFF6F6F6FFEBEB
      EBFFDEDEDEFFD6D6D6FFD5D5D5FFD1D1D1FFC3C3C3FFBCBCBCFFC0C0C0FFE5E5
      E5FF959595FF000000FF000000FF000000FF000000FFA5A5A5FFF5F5F5FFEEEE
      EEFFE6E6E6FFE2E2E2FFE6E6E6FFE1E1E1FFCDCDCDFFC2C2C2FFC2C2C2FFE3E3
      E3FF939393FF000000FF000000FF000000FF000000FFA3A3A3FFF4F4F4FFEAEA
      EAFFE1E1E1FFDDDDDDFFE3E3E3FFDEDEDEFFC9C9C9FFBDBDBDFFBFBFBFFFE2E2
      E2FF919191FF000000FF000000FF000000FF000000FFA2A2A2FFF3F3F3FFE7E7
      E7FFDDDDDDFFD9D9D9FFE0E0E0FFDBDBDBFFC4C4C4FFB8B8B8FFBBBBBBFFE1E1
      E1FF8E8E8EFF000000FF000000FF000000FF000000FF9F9F9FFFF2F2F2FFE2E2
      E2FFD8D8D8FFD5D5D5FFDCDCDCFFD8D8D8FFC0C0C0FFB3B3B3FFB7B7B7FFE0E0
      E0FF8A8A8AFF000000FF000000FF000000FF000000FF9E9E9EFFF0F0F0FFDEDE
      DEFFD4D4D4FFD2D2D2FFDBDBDBFFD6D6D6FFBFBFBFFFB0B0B0FFB3B3B3FFDEDE
      DEFF848484FF000000FF000000FF000000FF000000FF9B9B9BFFDEDEDEFFF3F3
      F3FFDBDBDBFFD2D2D2FFDBDBDBFFD6D6D6FFC0C0C0FFC9C9C9FFE6E6E6FFC4C4
      C4FF7F7F7FFF000000FF000000FF000000FF000000FF2F2F2FFF9E9E9EFFCECE
      CEFFEDEDEDFFF4F4F4FFF5F5F5FFF4F4F4FFEFEFEFFFE2E2E2FFBABABAFF7D7D
      7DFF1C1C1CFF000000FF000000FF000000FF000000FF000000FF151515FF6363
      63FF969696FFA1A1A1FFABABABFFA7A7A7FF959595FF808080FF4A4A4AFF0C0C
      0CFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF080808FF1D1D1DFF1A1A1AFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF050505FF3E3E
      3EFF7E7E7EFF9A9A9AFFB3B3B3FFB1B1B1FF909090FF767676FF303030FF0202
      02FF000000FF000000FF000000FF000000FF000000FF1F1F1FFF979797FFD0D0
      D0FFE8E8E8FFF3F3F3FFFDFDFDFFFCFCFCFFEDEDEDFFE0E0E0FFC1C1C1FF8484
      84FF121212FF000000FF000000FF000000FF000000FF8B8B8BFFE1E1E1FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFCFCF
      CFFF6A6A6AFF000000FF000000FF000000FF000000FFA9A9A9FFF8F8F8FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFEAEA
      EAFF989898FF000000FF000000FF000000FF000000FFA7A7A7FFF7F7F7FFE7E7
      E7FFEFEFEFFFF6F6F6FFFBFBFBFFFAFAFAFFF0F0F0FFDEDEDEFFC2C2C2FFE6E6
      E6FF959595FF000000FF000000FF000000FF000000FFA5A5A5FFF6F6F6FFEBEB
      EBFFDEDEDEFFD6D6D6FFD5D5D5FFD1D1D1FFC2C2C2FFBBBBBBFFBFBFBFFFE5E5
      E5FF949494FF000000FF000000FF000000FF000000FFA4A4A4FFF5F5F5FFEEEE
      EEFFE6E6E6FFE2E2E2FFE6E6E6FFE1E1E1FFCDCDCDFFC1C1C1FFC1C1C1FFE3E3
      E3FF929292FF000000FF000000FF000000FF000000FFA2A2A2FFF4F4F4FFEAEA
      EAFFE1E1E1FFDDDDDDFFE3E3E3FFDEDEDEFFC9C9C9FFBCBCBCFFBEBEBEFFE2E2
      E2FF909090FF000000FF000000FF000000FF000000FFA0A0A0FFF3F3F3FFE7E7
      E7FFDDDDDDFFD9D9D9FFE0E0E0FFDBDBDBFFC3C3C3FF89A594FF5B9570FF4D8D
      64FF42835AFF153922FF000000FF000000FF000000FF9F9F9FFFF2F2F2FFE2E2
      E2FFD8D8D8FFD5D5D5FFDCDCDCFFD8D8D8FF87A693FF5FAA80FF94D4B3FFB9E6
      D0FF68BA8EFF2B8E55FF0D391EFF000000FF000000FF9D9D9DFFF0F0F0FFDEDE
      DEFFD4D4D4FFD2D2D2FFDBDBDBFFD6D6D6FF46885EFF8FD3B0FF91D6B0FFFFFF
      FFFF63BB8BFF65BB8EFF176634FF000000FF000000FF9A9A9AFFDEDEDEFFF3F3
      F3FFDBDBDBFFD2D2D2FFDBDBDBFFD6D6D6FF2F794AFF9BD4B5FFFFFFFFFFFFFF
      FFFFFFFFFFFF94D2B1FF176935FF000000FF000000FF2F2F2FFF9D9D9DFFCECE
      CEFFEDEDEDFFF4F4F4FFF5F5F5FFF4F4F4FF206E3DFF60B98AFF5EB986FFFFFF
      FFFF5EB886FF65BB8EFF176634FF000000FF000000FF000000FF151515FF6363
      63FF959595FFA0A0A0FFAAAAAAFFA6A6A6FF537D62FF268B51FF62B98CFF94D2
      B1FF62B98CFF268B51FF0D391EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF080808FF1C1C1CFF1A1A1AFF040404FF0C381CFF166433FF1769
      35FF166433FF0C381CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF050505FF3E3E
      3EFF7E7E7EFF9A9A9AFFB3B3B3FFB1B1B1FF909090FF767676FF303030FF0202
      02FF000000FF000000FF000000FF000000FF000000FF1F1F1FFF979797FFD0D0
      D0FFE8E8E8FFF3F3F3FFFDFDFDFFFCFCFCFFEDEDEDFFE0E0E0FFC1C1C1FF8484
      84FF121212FF000000FF000000FF000000FF000000FF8B8B8BFFE1E1E1FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFCFCF
      CFFF6A6A6AFF000000FF000000FF000000FF000000FFA9A9A9FFF8F8F8FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFEAEA
      EAFF989898FF000000FF000000FF000000FF000000FFA7A7A7FFF7F7F7FFE7E7
      E7FFEFEFEFFFF6F6F6FFFBFBFBFFFAFAFAFFF0F0F0FFDEDEDEFFC2C2C2FFE6E6
      E6FF959595FF000000FF000000FF000000FF000000FFA5A5A5FFF6F6F6FFEBEB
      EBFFDEDEDEFFD6D6D6FFD5D5D5FFD1D1D1FFC2C2C2FFBBBBBBFFBFBFBFFFE5E5
      E5FF949494FF000000FF000000FF000000FF000000FFA4A4A4FFF5F5F5FFEEEE
      EEFFE6E6E6FFE2E2E2FFE6E6E6FFE1E1E1FFCDCDCDFFC1C1C1FFC1C1C1FFE3E3
      E3FF929292FF000000FF000000FF000000FF000000FFA2A2A2FFF4F4F4FFEAEA
      EAFFE1E1E1FFDDDDDDFFE3E3E3FFDEDEDEFFC9C9C9FFBCBCBCFFBEBEBEFFE2E2
      E2FF909090FF000000FF000000FF000000FF000000FFA0A0A0FFF3F3F3FFE7E7
      E7FFDDDDDDFFD9D9D9FFE0E0E0FFDBDBDBFFC3C3C3FF6E8ABDFF2058BEFF0441
      BBFF124CB3FF001F57FF000000FF000000FF000000FF9F9F9FFFF2F2F2FFE2E2
      E2FFD8D8D8FFD5D5D5FFDCDCDCFFD8D8D8FF728EC1FF3973D0FF8CB4F7FFB7D6
      FEFF70A7F5FF2B68C8FF021C4FFF000000FF000000FF9D9D9DFFF0F0F0FFDEDE
      DEFFD4D4D4FFD2D2D2FFDBDBDBFFD6D6D6FF1A52B9FF8CB4F6FF4B91FFFF1075
      FFFF1F85FFFF3E89EBFF023AA0FF000000FF000000FF9A9A9AFFDEDEDEFFF3F3
      F3FFDBDBDBFFD2D2D2FFDBDBDBFFD6D6D6FF0440BBFFADCDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF167DEFFF0340BAFF000000FF000000FF2F2F2FFF9D9D9DFFCECE
      CEFFEDEDEDFFF4F4F4FFF5F5F5FFF4F4F4FF1B56BEFF619CF4FF167DFFFF0074
      F8FF0074EEFF0266E1FF023CA5FF000000FF000000FF000000FF151515FF6363
      63FF959595FFA0A0A0FFAAAAAAFFA6A6A6FF5574ABFF2563C8FF1F75E6FF0477
      EAFF0062DDFF034ABAFF002058FF000000FF000000FF000000FF000000FF0000
      00FF000000FF080808FF1C1C1CFF1A1A1AFF040404FF0D275CFF023AA1FF0340
      BAFF023DA4FF002058FF000000FF000000FF000000FF050505FF3E3E3EFF7E7E
      7EFF9A9A9AFFB3B3B3FFB1B1B1FF909090FF767676FF303030FF020202FF0000
      00FF000000FF000000FF000000FF000000FF1F1F1FFF979797FFD0D0D0FFE8E8
      E8FFF3F3F3FFFDFDFDFFFCFCFCFFEDEDEDFFE0E0E0FFC1C1C1FF848484FF1212
      12FF000000FF000000FF000000FF000000FF8B8B8BFFE1E1E1FFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFCFCFCFFF6A6A
      6AFF000000FF000000FF000000FF000000FFA9A9A9FFF8F8F8FFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFEAEAEAFF9898
      98FF000000FF000000FF000000FF000000FFA7A7A7FFF7F7F7FFE7E7E7FFEFEF
      EFFFF6F6F6FFFBFBFBFFFAFAFAFFF0F0F0FFDEDEDEFFC2C2C2FFE6E6E6FF9595
      95FF000000FF000000FF000000FF000000FFA5A5A5FFF6F6F6FFEBEBEBFFDEDE
      DEFFD6D6D6FFD5D5D5FFD1D1D1FFC2C2C2FFBBBBBBFFBFBFBFFFAAD4E3FF56A4
      D8FF84B0DBFF449CD0FF0F374DFF000000FFA4A4A4FFF5F5F5FFEEEEEEFFE6E6
      E6FFE2E2E2FFE6E6E6FFE1E1E1FFCDCDCDFFC1C1C1FF88BDCEFF75BDE7FFB3D2
      F0FFE5F3FFFFABD2EFFF407DB5FF000000FFA2A2A2FFF4F4F4FFEAEAEAFFE1E1
      E1FFDDDDDDFFE3E3E3FFDEDEDEFFC9C9C9FF88B9C9FF7ED4EDFFB1E3F9FF8ABF
      E7FFADD3F6FFC3E0FCFF6199CCFF000000FFA0A0A0FFF3F3F3FFE7E7E7FFDDDD
      DDFFD9D9D9FFE0E0E0FFDBDBDBFF96BFCDFF7AD4EEFFC3F6FDFF6ADDF6FF6BCA
      EDFF61A2D7FF548FC2FF0C161DFF000000FF9F9F9FFFF2F2F2FFE2E2E2FFD8D8
      D8FFD5D5D5FFDCDCDCFFA3CCD9FF77D3EEFFC7F7FDFF5DDCF5FF59E2F7FF78D6
      F2FF398ACBFF0C1A27FF000000FF000000FF9D9D9DFFF0F0F0FFDEDEDEFFD4D4
      D4FFD2D2D2FF98BDCFFF75CBE7FFC7F7FDFF5CDCF5FF58E1F7FF79D4F1FF4493
      D7FF0A1C2CFF000000FF000000FF000000FF9A9A9AFFDEDEDEFFF3F3F3FFDBDB
      DBFF95B7C9FF73B8D6FFC1F6FDFF61DFF7FF5BE2F8FF77D3F0FF4696DAFF7580
      89FF000000FF000000FF000000FF000000FF2F2F2FFF9D9D9DFFCECECEFF9BB9
      CEFF78B5D5FF8FB6D1FF53C9E4FF59DFF5FF76D0EDFF4996D7FF727E88FF1C1C
      1CFF000000FF000000FF000000FF000000FF000000FF151515FF636363FF4188
      A9FFE0F2FFFF5299D8FF1878BDFF4797C4FF3A81B9FF455461FF0B0B0BFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2962
      80FF93C7F9FF90C9F9FF3F84C9FF195DA1FF071521FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1039
      51FF265C84FF4685B9FF316A8EFF050F18FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF050505FF3E3E3EFF7E7E7EFF9A9A
      9AFFB3B3B3FFB1B1B1FF909090FF767676FF303030FF020202FF000000FF0000
      00FF000000FF000000FF000000FF1F1F1FFF979797FFD0D0D0FFE8E8E8FFF3F3
      F3FFFDFDFDFFFCFCFCFFEDEDEDFFE0E0E0FFC1C1C1FF848484FF121212FF0000
      00FF000000FF000000FF000000FF8B8B8BFFE1E1E1FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFCFCFCFFF6A6A6AFF0000
      00FF000000FF000000FF000000FFA9A9A9FFF8F8F8FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFEAEAEAFF989898FF0000
      00FF000000FF000000FF000000FFA7A7A7FFF7F7F7FFE7E7E7FFEFEFEFFFF6F6
      F6FFFBFBFBFFFAFAFAFFF0F0F0FFDEDEDEFFC2C2C2FFE6E6E6FF959595FF0000
      00FF000000FF000000FF000000FFA5A5A5FFF6F6F6FFEBEBEBFFDEDEDEFFD6D6
      D6FFD5D5D5FFD1D1D1FFC2C2C2FFBBBBBBFFBFBFBFFFE5E5E5FF949494FF0000
      00FF000000FF000000FF000000FFA4A4A4FFF5F5F5FFEEEEEEFFE6E6E6FFE2E2
      E2FFE6E6E6FFD4966CFFD49D79FFD0976FFFD6A381FFCD8D66FFCD8F67FFD099
      73FFD19871FFC88A60FF241206FFA2A2A2FFF4F4F4FFEAEAEAFFE1E1E1FFDDDD
      DDFFE3E3E3FFCC8C63FFF3CDAFFFFFFFFFFFE3C7B2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEABEA0FFC9885EFFA0A0A0FFF3F3F3FFE7E7E7FFDDDDDDFFD9D9
      D9FFE0E0E0FFC78559FFEFBF9DFFFFFFFFFFCC926CFFFFFFFFFFFFFFFFFFFFFB
      F7FFFFF8F1FFE4AE8BFFC7895FFF9F9F9FFFF2F2F2FFE2E2E2FFD8D8D8FFD5D5
      D5FFDCDCDCFFC8875BFFEFBEA0FFFDFCFAFFFEFCFBFFFEFDFDFFFEFDFCFFFDFB
      FAFFFDFCFBFFDDA784FFC07D51FF9D9D9DFFF0F0F0FFDEDEDEFFD4D4D4FFD2D2
      D2FFDBDBDBFFCA8C63FFEAB798FFDDA47CFFDDA57EFFDBA27AFFD99F78FFD99F
      77FFD89E76FFD89D76FFBE835BFF9A9A9AFFDEDEDEFFF3F3F3FFDBDBDBFFD2D2
      D2FFDBDBDBFFC98A5FFFE6B491FFE2A680FFE1A680FFDEA27BFFDCA079FFDB9E
      77FFD99D75FFD49971FFBA7C55FF2F2F2FFF9D9D9DFFCECECEFFEDEDEDFFF4F4
      F4FFF5F5F5FFC38052FFEAB596FFF3F3EAFFEDF1E6FFEFF1E6FFEFF0E6FFEDF1
      E5FFF3F5EDFFD59B77FFAF6E42FF000000FF151515FF636363FF959595FFA0A0
      A0FFAAAAAAFFC27D4FFFEFB599FFEAF3E8FF4FBE83FF6DC997FF6FC998FF52BE
      83FFE4F4E9FFDD9B79FFA96738FF000000FF000000FF000000FF000000FF0808
      08FF1C1C1CFFC58253FFEFCEB9FFDDFFFFFF86EEC7FFA1F4D7FFA1F6D7FF8BEE
      C7FFE0FFFFFFDDA184FFAA683CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF8F5026FFC28356FFD38A66FFE18E6EFFDC8C6AFFDA8A6BFFD789
      6CFFCD8A6AFFAA6B42FFA55D2CFF522E16FF6A3B1DFF96542AFFAF6231FFB767
      33FFB96934FFBA6934FFBA6834FFBA6834FFBB6A37FFBC6C39FFBA6B38FFAE62
      33FF945831FF3C2111FF000000FF723F20FFF6E0D1FFF7E0D1FFFEFBF8FFFEFB
      F7FFFDF9F6FFFCF5F0FFFAF0EAFFFBF2EDFFFDF9F6FFFDFAF7FFFBF1EBFFF7E8
      DEFFE8CCB9FFBA7E55FF452714FF9E592CFFF6DFD1FFE9A97EFFFEFAF6FFFDFA
      F6FFC88B62FFFBF3EEFFFBF1EAFFFCF6F2FFFEFBF8FFFCF6F1FFF9ECE2FFF8E7
      DBFFEED0B9FFECD0BCFFB56B3BFFB06331FFF6DFD0FFE8A77CFFFCF6F1FFFCF6
      F1FFC88B62FFFAF1E9FFFBF4EEFFFDFAF7FFFDF9F6FFFAF0E8FFF8E8DDFFF7E6
      DBFFE1A278FFEFD5C2FFB56733FFB76733FFF5DDCCFFE7A77CFFFAF0E8FFFAF0
      E8FFC98C64FFFAF0E9FFFDF8F3FFFEFAF8FFFCF4EFFFF9E9DFFFF7E7DBFFF7E5
      D9FFE0A176FFE7C1A8FFB56633FFB96934FFF4DCC9FFE7A67BFFF9ECE1FFF9EC
      E1FFF9EDE3FFFCF4EEFFFDFAF7FFFDF7F3FFFAEDE5FFF7E7DBFFF7E5D9FFF6E5
      D8FFDE9F75FFE4BDA3FFB36532FFBA6934FFF4D9C7FFE6A57BFFC88B62FFC98C
      63FFC98D65FFCB916AFFCB916BFFCA8F67FFC88B63FFC88B62FFC88B62FFC88B
      62FFDA9B72FFE1B99EFFB26432FFBA6834FFF2D8C4FFE3A379FFE3A278FFE3A3
      78FFE2A379FFE2A279FFE1A279FFE1A177FFDF9F75FFDE9E74FFDD9D72FFDB9B
      70FFDC9C72FFDDB499FFB06332FFBA6834FFF2D5C1FFE3A278FFE3A278FFE2A2
      79FFE2A279FFE2A379FFE1A177FFE0A076FFDE9F75FFDE9D73FFDC9C72FFDA9A
      71FFD99A71FFDAAF94FFAE6231FFBA6834FFF0D2BDFFE2A278FFE2A278FFE1A2
      78FFE2A279FFE1A279FFE0A076FFDE9E75FFDD9E74FFDC9C72FFD99A70FFD898
      6FFFD6986EFFD5AA8DFFAC6131FFB96834FFEFD0BAFFE2A178FFFEFBF8FFFEFB
      F8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
      F8FFD3956BFFD2A689FFAA6030FFBA6936FFEFCEB7FFE1A177FFFEFAF7FF60BF
      87FF60BF87FF60BF87FF60BF87FF60BF87FF60BF87FF60BF87FF60BF87FFFDF9
      F6FFCF9268FFCEA283FFA95F30FFBA6A36FFEECCB5FFE1A178FFFEFAF7FFBEDC
      C1FFBEDCC1FFBEDCC1FFBEDCC1FFBEDCC1FFBEDCC1FFBEDCC1FFBEDCC1FFFDF9
      F6FFCD8F66FFCC9D80FFA75F30FFB86935FFEDCAB2FFE0A178FFFEFAF7FF60BF
      87FF60BF87FF60BF87FF60BF87FF60BF87FF60BF87FF60BF87FF60BF87FFFDF9
      F6FFCA8C63FFC99A7AFFA55E2FFFA15B2DFFEBC5ACFFEAC4ACFFFEFBF8FFFEFB
      F8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
      F8FFC8997AFFC79777FF9A572CFF673A1DFF834924FFAB6031FFB66633FFB466
      33FFB36532FFB16432FFAF6331FFAD6231FFAB6130FFA96030FFA85F30FFA75E
      2FFFA55E2FFF9C592DFF804924FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF091F2EFF218EC7FF19A4E4FF1E9DDAFF1343
      61FF010101FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF07121CFF1FA1DDFF17A5E5FF17A5E5FF17A5E5FF17A5
      E5FF133B56FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0A3558FF32ADE5FF63B7E6FF8CC8F6FF39ACE6FF1BA6
      E5FF1F8CC6FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF072D52FFB7D0E7FF95C4F1FFA0D0FBFF95C5F3FFB5CF
      E4FF2972A6FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF211D1FFF70A2D5FFABD1F2FFADD7FDFFAFD4F5FF91BF
      E7FF2A3E58FF000000FF000000FF000000FF000000FF000000FF0E1725FF3D5A
      8CFF3F5B91FF405D93FF234452FF67738EFF71ACE7FF80B0E3FF7BB1E7FF6A97
      C3FF1D461FFF010401FF000000FF000000FF000000FF080E18FF425E93FF3F59
      8FFF3F598FFF3F598FFF3F598FFF6D8E9DFF839892FF7B9388FF738B7DFFA3D5
      B0FF81BE84FF174D1CFF010301FF000000FF000000FF25416DFF4E6799FF617E
      ADFF7AA5D6FF5371A4FF415B91FF426597FF7AD09EFF75CE96FF6FCD8DFF70CD
      87FF9CD8AAFF6BAF6EFF1F3C20FF000000FF000000FF163963FFA6BEDBFF95C4
      F1FFA0D0FBFF95C5F3FFB5CFE4FF3F78A6FF76CE8EFF73CD88FF6ECB82FF68CB
      79FF68C977FF5E955FFF4C95DEFF000000FF000000FF211D1FFF70A2D5FFABD1
      F2FFADD7FDFFAFD4F5FF91BFE7FF528288FF77CF93FF75CE8DFF74CE8EFF74CE
      90FF69B372FF588E58FF4A9AE6FF000000FF000000FF441800FF697590FF71AC
      E7FF80B0E3FF7BB1E7FF6A97C3FF72532AFF5AA362FF57A766FF57A665FF54A2
      62FF327335FF40333AFF1E384EFF000000FF411700FFC36C4CFFFFE8BFFFACA9
      85FFA69D7BFF9F9173FFF7CA9BFFE49373FF692306FF060100FF000000FF0000
      00FF000000FF000000FF000000FF32170AFFAC6950FFFDD7B1FFFFD683FFFFCA
      63FFFFBF5CFFFFB354FFFFA655FFFFC491FFD67B59FF4E2615FF000000FF0000
      00FF000000FF000000FF000000FF3281CFFF92ABCCFFE7AE71FFFFB75DFFFEAF
      5DFFFEA659FFFD9F53FFFF964BFFFD924BFFB29EA1FF4C95DEFF000000FF0000
      00FF000000FF000000FF000000FF3782C9FF6F84ABFFC87C57FFFFB964FFFFB6
      5FFFFFAF5CFFFFB15BFFFFB35AFFDE8755FF86717CFF4A9AE6FF000000FF0000
      00FF000000FF000000FF000000FF162430FF273E57FF713925FFCB6E32FFD27C
      3FFFD37C3FFFD17A3FFFCD783DFF933D1DFF323A49FF1E384EFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0818
      32FF114386FF0F498FFF0E4689FF103E76FF09192EFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF07162FFF104C
      94FF11569AFF115698FF105192FF0E4886FF0D3C6FFF0A1624FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0E4996FF1156
      9EFF0E4889FF0E4986FF104986FF134A84FF113F73FF0E2F55FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0B3C86FF7A96
      B7FF89B6E4FF6F9BC8FF133E6CFF174270FF204369FF103862FF010204FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF1B568FFFD9E8
      F7FF96C4F1FF8DBAE5FF7DA8D1FF88B4DFFFCDDFEEFF20609DFF123B4BFF56A4
      D8FF84B0DBFF449CD0FF0F374DFF000000FF000000FF000000FF20446FFFA5CA
      EEFFAACCEAFFA6D0F6FFA7D0F6FFAACCEAFFA6CDEEFF21729DFF75BDE7FFB3D2
      F0FFE5F3FFFFABD2EFFF407DB5FF000000FF000000FF030000FF422416FF326B
      A6FF9BCCF8FFAED4F7FFAED4F7FFA4CFF6FF2C89BEFF7BD1E9FFB1E3F9FF8ABF
      E7FFADD3F6FFC3E0FCFF6199CCFF000000FF050100FF431C07FFBB461AFFF4E2
      D4FF4C79A8FF4B79A7FF4B79A7FF408BB9FF7BD4EEFFC3F6FDFF6ADDF6FF6BCA
      EDFF61A2D7FF548FC2FF0C161DFF010000FF3F1904FFC34A1DFFF6E4D6FFFFE4
      A3FFFFD470FFFFC967FFBEBA85FF77D3EEFFC7F7FDFF5DDCF5FF59E2F7FF78D6
      F2FF398ACBFF0C1A27FF000000FF31190CFF895242FFFCC8AAFFFFD197FFFEC7
      6BFFFEBE66FFAFA67EFF75CBE7FFC7F7FDFF5CDCF5FF58E1F7FF79D4F1FF4490
      D4FF343339FF000000FF000000FF2679CBFF76B2EAFFB29D93FFFFB65EFFFFB5
      61FFB2A27BFF74B7D3FFC1F6FDFF61DFF7FF5BE2F8FF77D3F0FF4594D8FF73B1
      EAFF2770C3FF000000FF000000FF277BD0FF81B9EEFF9E6456FFF5BA83FFA691
      72FF78B5D5FF8FB6D1FF53C9E4FF59DFF5FF76D0EDFF4F95D2FF95625BFF82BB
      EFFF2875C9FF000000FF000000FF324C64FF2375C9FF835D5DFFBE5E33FF4188
      A9FFE0F2FFFF5299D8FF1878BDFF4797C4FF4787B6FF9B5240FF735E67FF2B79
      C8FF36536BFF000000FF000000FF000000FF04090BFF0A0808FF6A2E11FF2B62
      80FF93C7F9FF90C9F9FF3F84C9FF2160A3FF7F4237FF81381AFF0B0809FF0409
      0BFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1039
      51FF265C84FF4685B9FF316A8EFF050F18FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF278295FF3DCC
      EBFF3CCBEAFF3AC9E9FF39C7E9FF38C3E8FF36C1E7FF34BFE6FF33BCE5FF31BA
      E4FF2AA0C8FF000000FF000000FF000000FF000000FF000000FF3DCAE9FF99ED
      FAFF98EBF9FF96E8F9FF93E5F8FF90E2F7FF8DDFF6FF8ADBF5FF54C7EBFF2DAE
      D8FF000000FF000000FF000000FF000000FF000000FF1F6879FF62D9F1FF99EB
      FAFF46D8F4FF42D3F3FF3DCEF1FF38C8F0FF8BDCF5FF60CBEDFF2FB5E0FF0000
      00FF000000FF000000FF000000FF000000FF000000FF3AC5E3FF92E9F9FF70E1
      F7FF43D4F3FF3FCEF2FF3AC9F0FF89DCF5FF6ED0EFFF3BBAE4FF06191FFF0000
      00FF000000FF000000FF000000FF000000FF14414DFF59D4EFFF98EAF9FF45D6
      F4FF40D0F2FF3BCBF0FF6CD5F3FF7DD7F3FF48BFE7FF0D3441FF000000FF0000
      00FF000000FF000000FF000000FF000000FF36BEDFFF7EE1F5FF8DE6F8FF41D2
      F3FF3DCDF1FF37C7EFFF8BDCF5FF56C5EAFF135165FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0C2A32FF4DCDECFF97E9F9FF48D5F3FF43CF
      F1FF3ECAF0FF36C1EEFF88D9F4FF2CB2E0FF29ABD9FF28A8D9FF26A6D8FF24A3
      D6FF22A0D5FF1E94C7FF000000FF33B2D4FF73DAF2FF92E6F8FF90E3F7FF8CE0
      F6FF89DCF5FF89DBF5FF87D7F4FF83D3F2FF7DCFF1FF7ACCF0FF78C9EFFF46B3
      E3FF209BD1FF03161EFF000000FF33B5D9FF33BADFFF32B7DEFF30B5DDFF2EB2
      DCFF2CB0DBFF85D7F3FF2DB5EBFF48BBECFF7ECEF1FF4FB8E6FF2AA7DDFF1463
      86FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF2185A8FF6ECCEEFF82D2F2FF7CCEF1FF48B5E4FF209BCFFF020F14FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF29AEDFFF83D3F2FF53BCE7FF2CA9DEFF135C7CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF218D
      B5FF4DBBE7FF4AB9E6FF229ACBFF020F14FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF02080AFF2BAD
      DFFF29AADEFF125877FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF218FB8FF229A
      C9FF02080AFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF07242FFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF765E50FFD4AB8FFFEDBF9EFFEBBD
      9CFFEBBB99FFE9B995FFE7B692FFE6B48FFFE4B18BFFE2AE87FFE0AB83FFDDA8
      7EFFDCA47BFFAC805FFF000000FF000000FFDBB193FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFD19B6FFF000000FF000000FFECBE9DFFFBF7F4FF9BD5A4FF97D3
      A0FF93D09CFF8FCE97FF8ACB92FF86C98DFF81C588FF7CC283FF78C07EFF74BD
      7AFFFBF7F4FFD49A6DFF000000FF000000FFEBBC9AFFFBF7F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBF7F4FFD19668FF000000FF000000FFE9B997FFFBF7F4FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2
      A5FFFBF7F4FFCE9262FF000000FF000000FFE7B693FFFBF7F4FFE9C2A5FFFFFF
      FFFFE8C3A8FFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7F1EBFFCB8E5DFF000000FF000000FFE5B38EFFFAF6F2FFE9C5A9FFE9C5
      ABFFEAC7ABFFE9C7ACFFE9C9ADFFE9C9AFFFE8C7ABFFE9C9AFFFE8C8AFFFE8CC
      B4FFF2E7DEFFC88957FF000000FF000000FFE3B08BFFFAF6F1FFEAC9ADFFFFFF
      FFFFEAC9AFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1E5DBFFC58553FF000000FF000000FFE1AD86FFFAF4F0FFEACBB1FFEACC
      B2FFEACCB2FFEACCB2FFEACCB2FFEACEB6FFE8C7ABFFE8C7ABFFE8C8AFFFE8C8
      ADFFF0E2D8FFC38552FF000000FF000000FFDFA981FFF9F3EFFFEACEB6FFFFFF
      FFFFEBD0BAFFFFFFFFFFFFFFFFFFFFFFFFFFEACFB9FFFBF6F2FFFFFFFFFFFFFF
      FFFFF0E2D8FFC88C5DFF000000FF000000FFDDA77CFFF9F3EFFFEBD0B9FFEBD0
      BAFFEBD0BAFFEBD0BAFFEBD0BAFFEBD1BCFFEACDB4FFEACDB4FFEACDB4FFEACD
      B4FFF0E2D8FFC5895AFF000000FF000000FFD9A378FFF9F3EEFFEBD2BDFFFFFF
      FFFFEBD3BEFFFFFFFFFFFFFFFFFFFFFFFFFFEAC7ACFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0E2D8FFC58B5DFF000000FF000000FFD7A073FFF8F2EDFFF7F0EAFFF6ED
      E6FFF4EAE2FFF3E7DEFFF1E4DBFFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2
      D8FFF0E2D8FFC2885AFF000000FF000000FFA37856FFCA9167FFD19566FFCE91
      61FFCB8D5CFFC98959FFC78654FFC28350FFC28350FFC28350FFC28350FFC283
      50FFC28350FF7F502CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF765E50FFD4AB8FFFEDBF9EFFEBBD
      9CFFEBBB99FFE9B995FFE7B692FFE6B48FFFE4B18BFFE2AE87FFE0AB83FFDDA8
      7EFFDCA47BFFAC805FFF000000FF000000FFDBB193FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFD19B6FFF000000FF000000FFECBE9DFFFBF7F4FF9BD5A4FF97D3
      A0FF93D09CFF8FCE97FF8ACB92FF86C98DFF81C588FF7CC283FF78C07EFF74BD
      7AFFFBF7F4FFD49A6DFF000000FF000000FFEBBC9AFFFBF7F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBF7F4FFD19668FF000000FF000000FFE9B997FFFBF7F4FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2
      A5FFFBF7F4FFCE9262FF000000FF000000FFE7B693FFFBF7F4FFE9C2A5FFFFFF
      FFFFE8C3A8FFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7F1EBFFCB8E5DFF000000FF000000FFE5B38EFFFAF6F2FFE9C5A9FFE9C5
      ABFFEAC7ABFFE9C7ACFFE9C9ADFFE9C9AFFFE8C7ABFFE9C9AFFFE8C8AFFFE8CC
      B4FFF2E7DEFFC88957FF000000FF000000FFE3B08BFFFAF6F1FFEAC9ADFFFFFF
      FFFFEAC9AFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1E5DBFFC58553FF000000FF000000FFE1AD86FFFAF4F0FFEACBB1FFEACC
      B2FFEACCB2FFEACCB2FFEACCB2FFEACEB6FFE8C7ABFFA1AD8DFF5D966FFF4D8D
      64FF47885DFF797D4DFF000000FF000000FFDFA981FFF9F3EFFFEACEB6FFFFFF
      FFFFEBD0BAFFFFFFFFFFFFFFFFFFFFFFFFFF9CAE90FF5FAA80FF94D4B3FFB9E6
      D0FF68BA8EFF2B8E55FF0D391EFF000000FFDDA77CFFF9F3EFFFEBD0B9FFEBD0
      BAFFEBD0BAFFEBD0BAFFEBD0BAFFEBD1BCFF47885EFF8FD3B0FF91D6B0FFFFFF
      FFFF63BB8BFF65BB8EFF176634FF000000FFD9A378FFF9F3EEFFEBD2BDFFFFFF
      FFFFEBD3BEFFFFFFFFFFFFFFFFFFFFFFFFFF2F794AFF9BD4B5FFFFFFFFFFFFFF
      FFFFFFFFFFFF94D2B1FF176935FF000000FFD7A073FFF8F2EDFFF7F0EAFFF6ED
      E6FFF4EAE2FFF3E7DEFFF1E4DBFFF0E2D8FF206E3CFF60B98AFF5EB986FFFFFF
      FFFF5EB886FF65BB8EFF176634FF000000FFA37856FFCA9167FFD19566FFCE91
      61FFCB8D5CFFC98959FFC78654FFC28350FF697542FF268B51FF62B98CFF94D2
      B1FF62B98CFF268B51FF0D391EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C381CFF166433FF1769
      35FF166433FF0C381CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF765E50FFD4AB8FFFEDBF9EFFEBBD
      9CFFEBBB99FFE9B995FFE7B692FFE6B48FFFE4B18BFFE2AE87FFE0AB83FFDDA8
      7EFFDCA47BFFAC805FFF000000FF000000FFDBB193FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFD19B6FFF000000FF000000FFECBE9DFFFBF7F4FF9BD5A4FF97D3
      A0FF93D09CFF8FCE97FF8ACB92FF86C98DFF81C588FF7CC283FF78C07EFF74BD
      7AFFFBF7F4FFD49A6DFF000000FF000000FFEBBC9AFFFBF7F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBF7F4FFD19668FF000000FF000000FFE9B997FFFBF7F4FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2
      A5FFFBF7F4FFCE9262FF000000FF000000FFE7B693FFFBF7F4FFE9C2A5FFFFFF
      FFFFE8C3A8FFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7F1EBFFCB8E5DFF000000FF000000FFE5B38EFFFAF6F2FFE9C5A9FFE9C5
      ABFFEAC7ABFFE9C7ACFFE9C9ADFFE9C9AFFFE8C7ABFFE9C9AFFFE8C8AFFFE8CC
      B4FFF2E7DEFFC88957FF000000FF000000FFE3B08BFFFAF6F1FFEAC9ADFFFFFF
      FFFFEAC9AFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1E5DBFFC58553FF000000FF000000FFE1AD86FFFAF4F0FFEACBB1FFEACC
      B2FFEACCB2FFEACCB2FFEACCB2FFEACEB6FFE8C7ABFF8892B6FF2659BDFF0441
      BBFF1C55BCFF676583FF000000FF000000FFDFA981FFF9F3EFFFEACEB6FFFFFF
      FFFFEBD0BAFFFFFFFFFFFFFFFFFFFFFFFFFF8A96BEFF3B74D2FF8CB4F7FFB7D6
      FEFF70A7F5FF2D69CAFF021C4FFF000000FFDDA77CFFF9F3EFFFEBD0B9FFEBD0
      BAFFEBD0BAFFEBD0BAFFEBD0BAFFEBD1BCFF2054B7FF8CB4F6FF4B91FFFF1075
      FFFF1F85FFFF3E89EBFF023AA0FF000000FFD9A378FFF9F3EEFFEBD2BDFFFFFF
      FFFFEBD3BEFFFFFFFFFFFFFFFFFFFFFFFFFF0441BBFFADCDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF167DEFFF0340BAFF000000FFD7A073FFF8F2EDFFF7F0EAFFF6ED
      E6FFF4EAE2FFF3E7DEFFF1E4DBFFF0E2D8FF1B54BBFF619CF4FF167DFFFF0074
      F8FF0074EEFF0266E1FF023CA5FF000000FFA37856FFCA9167FFD19566FFCE91
      61FFCB8D5CFFC98959FFC78654FFC28350FF6C6B8AFF2563C7FF1F75E6FF0477
      EAFF0062DDFF044BBAFF002058FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0D275CFF023AA1FF0340
      BAFF023DA4FF002058FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF765E50FFD4AB8FFFEDBF9EFFEBBD
      9CFFEBBB99FFE9B995FFE7B692FFE6B48FFFE4B18BFFE2AE87FFE0AB83FFDDA8
      7EFFDCA47BFFAC805FFF000000FF000000FFDBB193FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFD19B6FFF000000FF000000FFECBE9DFFFBF7F4FF9BD5A4FF97D3
      A0FF93D09CFF8FCE97FF8ACB92FF86C98DFF81C588FF7CC283FF78C07EFF74BD
      7AFFFBF7F4FFD49A6DFF000000FF000000FFEBBC9AFFFBF7F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBF7F4FFD19668FF000000FF000000FFE9B997FFFBF7F4FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFACBCB7FF56A4
      D8FF84B0DBFF449CD0FF0F374DFF000000FFE7B693FFFBF7F4FFE9C2A5FFFFFF
      FFFFE8C3A8FFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFB0E6F5FF75BDE7FFB3D2
      F0FFE5F3FFFFABD2EFFF407DB5FF000000FFE5B38EFFFAF6F2FFE9C5A9FFE9C5
      ABFFEAC7ABFFE9C7ACFFE9C9ADFFE9C9AFFFA5C0BDFF80D5EDFFB1E3F9FF8ABF
      E7FFADD3F6FFC3E0FCFF6199CCFF000000FFE3B08BFFFAF6F1FFEAC9ADFFFFFF
      FFFFEAC9AFFFFFFFFFFFFFFFFFFFC0EBF7FF7BD4EDFFC3F6FDFF6ADDF6FF6BCA
      EDFF61A2D7FF6398C9FF0C161DFF000000FFE1AD86FFFAF4F0FFEACBB1FFEACC
      B2FFEACCB2FFEACCB2FFAFC3BEFF77D3EEFFC7F7FDFF5DDCF5FF59E2F7FF78D6
      F2FF4E9FDEFFAB8669FF000000FF000000FFDFA981FFF9F3EFFFEACEB6FFFFFF
      FFFFEBD0BAFFB0D6E7FF75CBE7FFC7F7FDFF5CDCF5FF58E1F7FF79D4F1FF4A99
      DEFFCAD0D8FFC88C5DFF000000FF000000FFDDA77CFFF9F3EFFFEBD0B9FFEBD0
      BAFFA6B6B8FF74B8D5FFC1F6FDFF61DFF7FF5BE2F8FF77D3F0FF4796DAFFD4C4
      B8FFF0E2D8FFC5895AFF000000FF000000FFD9A378FFF9F3EEFFEBD2BDFFA6C4
      D9FF78B5D5FF8FB6D1FF53C9E4FF59DFF5FF76D0EDFF4F9CDDFFE4F0FAFFFFFF
      FFFFF0E2D8FFC58B5DFF000000FF000000FFD7A073FFF8F2EDFFF7F0EAFF4188
      A9FFE0F2FFFF5299D8FF1878BDFF4797C4FF458BC2FFD0D2D7FFF0E2D8FFF0E2
      D8FFF0E2D8FFC2885AFF000000FF000000FFA37856FFCA9167FFD19566FF2C64
      81FF93C7F9FF90C9F9FF3F84C9FF2264A5FFA78163FFC28350FFC28350FFC283
      50FFC28350FF7F502CFF000000FF000000FF000000FF000000FF000000FF1039
      51FF265C84FF4685B9FF316A8EFF050F18FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF765E50FFD4AB8FFFEDBF9EFFEBBD9CFFEBBB
      99FFE9B995FFE7B692FFE6B48FFFE4B18BFFE2AE87FFE0AB83FFDDA87EFFDCA4
      7BFFAC805FFF000000FF000000FFDBB193FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFD19B6FFF000000FF000000FFECBE9DFFFBF7F4FF9BD5A4FF97D3A0FF93D0
      9CFF8FCE97FF8ACB92FF86C98DFF81C588FF7CC283FF78C07EFF74BD7AFFFBF7
      F4FFD49A6DFF000000FF000000FFEBBC9AFFFBF7F4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7
      F4FFD19668FF000000FF000000FFE9B997FFFBF7F4FFE9C2A5FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFFBF7
      F4FFCE9262FF000000FF000000FFE7B693FFFBF7F4FFE9C2A5FFFFFFFFFFE8C3
      A8FFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1
      EBFFCB8E5DFF000000FF000000FFE5B38EFFFAF6F2FFE9C5A9FFE9C5ABFFEAC7
      ABFFE9C7ACFFE9C9ADFFE9C9AFFFE8C7ABFFE9C9AFFFE7C8AFFF85B0C9FF67B6
      E0FF8A8E8AFF000000FF000000FFE3B08BFFFAF6F1FFEAC9ADFFFFFFFFFFEAC9
      AFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFFFFFFFFFA0CFEEFF6DC9ECFFC9F3
      FBFF5DB5DDFF092539FF000000FFE1AD86FFFAF4F0FFEACBB1FFEACCB2FFEACC
      B2FFEACCB2FFEACCB2FFEACEB6FFE8C7ABFF9DB2BDFF5CC0EAFFA2F0FBFF7ED4
      F0FF7CC7ECFF4B9BD4FF0B253FFFDFA981FFF9F3EFFFEACEB6FFFFFFFFFFEBD0
      BAFFFFFFFFFFFFFFFFFFFFFFFFFFEACFB9FF75BBE4FFA8EEF9FF7CE6F8FF99E8
      F8FF7CD1F0FF7EE2F6FF3A8ECCFFDDA77CFFF9F3EFFFEBD0B9FFEBD0BAFFEBD0
      BAFFEBD0BAFFEBD0BAFFEBD1BCFFEACDB4FF89B1C8FF88DDF4FF68E0F6FF71E2
      F7FF5DDFF6FF53DAF6FF3477C3FFD9A378FFF9F3EEFFEBD2BDFFFFFFFFFFEBD3
      BEFFFFFFFFFFFFFFFFFFD4E9F7FF66AFD6FF65C0E8FF5CD9F2FF4CDBF6FF59DD
      F7FF53D8F5FF2B7AC6FF0B1D37FFD7A073FFF8F2EDFFF7F0EAFFF6EDE6FFF4EA
      E2FFF3E7DEFFAAC9DBFF5BAADCFF98E2F6FF51DCF5FF44D9F6FF3D93CDFF448B
      D0FF4184C7FF0A1D36FF000000FFA37856FFCA9167FFD19566FFCE9161FFCB8D
      5CFFC98959FF5EA3C7FFA0E6F8FF36D2F2FF45D6F6FF3E92C8FF85726BFFB981
      55FF7C5134FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF3788B3FF85E9F9FF4BD9F5FF368AC2FF0D2239FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF1B4968FF3D90C2FF317BB2FF0C2137FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF5F4C40FFAB8973FFBE997EFFBC97
      7DFFB89275FFB68E6FFFB48B6CFFB38969FFB08666FFB08362FF89674CFF0000
      00FF000000FF000000FF000000FF000000FFAE8E76FFC8C6C3FFC8C6C3FFC8C6
      C3FFC8C6C3FFC8C6C3FFC8C6C3FFC8C6C3FFC8C6C3FFC8C6C3FFA77A58FF0000
      00FF000000FF000000FF000000FF000000FFBC987EFFC8C6C3FFAFB491FFD8BB
      9BFFE1BC9AFFDEBA97FFDAB38EFFD7AF87FFD5AB83FFDDAD89FFD7A47BFFC694
      6FFF9C7455FF000000FF000000FF000000FFBC967BFFC8C6C3FFE7C3A7FFF6F3
      F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F2EFFFF3EAE4FFE2DE
      DCFFBD8C64FF000000FF000000FF000000FFBA9479FFC8C6C3FFE7BA9BFFF5EE
      E9FFC6C8A1FFE5C1A0FFEDBF9EFFEBBD9CFFE7B692FFE4B18BFFE2AE87FFE0AB
      83FFDDA87EFFDCA47BFFAC805FFF000000FFB89276FFC8C6C3FFE6B898FFF6F3
      F0FFEFC5A7FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFD19B6FFF000000FFB78F72FFC8C4C2FFE4B695FFF5EE
      E9FFECBE9DFFFBF7F4FF9BD5A4FF97D3A0FF8ACB92FF81C588FF7CC283FF78C0
      7EFF74BD7AFFFBF7F4FFD49A6DFF000000FFB68D6FFFC8C4C0FFE2B392FFF6F3
      F0FFEBBC9AFFFBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFBF7F4FFD19668FF000000FFB48A6BFFC8C3C0FFE1B18EFFF4EE
      E8FFE9B997FFFBF7F4FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2
      A5FFE9C2A5FFFBF7F4FFCE9262FF000000FFAC805CFFC6C2BEFFE1B18FFFF5F0
      EBFFE7B693FFFBF7F4FFE9C2A5FFFFFFFFFFE8C7ABFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF7F1EBFFCB8E5DFF000000FF836145FFA17453FFDBA781FFF2E7
      E1FFE5B38EFFFAF6F2FFE9C5A9FFE9C5ABFFE8C7ABFFE8C7ABFFE9C9AFFFE8C8
      AFFFE8CCB4FFF2E7DEFFC88957FF000000FF000000FF000000FFC29068FFDFDA
      D5FFE3B08BFFFAF6F1FFEAC9ADFFFFFFFFFFE8C7ABFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1E5DBFFC58553FF000000FF000000FF000000FF956D4DFFB683
      5DFFE1AD86FFFAF4F0FFEACBB1FFEACCB2FFE8C7ABFFE8C7ABFFE8C7ABFFE8C8
      AFFFE8C8ADFFF0E2D8FFC38552FF000000FF000000FF000000FF000000FF0000
      00FFD7A073FFF8F2EDFFF7F0EAFFF6EDE6FFF1E4DBFFF0E2D8FFF0E2D8FFF0E2
      D8FFF0E2D8FFF0E2D8FFC2885AFF000000FF000000FF000000FF000000FF0000
      00FFA37856FFCA9167FFD19566FFCE9161FFC78654FFC28350FFC28350FFC283
      50FFC28350FFC28350FF7F502CFF765E50FFD4AB8FFFEDBF9EFFEBBD9CFFEBBB
      99FFE9B995FFE7B692FFE6B48FFFE4B18BFFE2AE87FFE0AB83FFDDA87EFFDCA4
      7BFFAC805FFF000000FF000000FFDBB193FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFD19B6FFF000000FF000000FFECBE9DFFFBF7F4FF9BD5A4FF97D3A0FF93D0
      9CFF8FCE97FF8ACB92FF86C98DFF81C588FF7CC283FF78C07EFF74BD7AFFFBF7
      F4FFD49A6DFF000000FF000000FFEBBC9AFFFBF7F4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7
      F4FFD19668FF000000FF000000FFE9B997FFFBF7F4FFE9C2A5FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFFBF7
      F4FFCE9262FF000000FF000000FFE7B693FFFBF7F4FFE9C2A5FFFFFFFFFFE8C3
      A8FFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1
      EBFFCB8E5DFF000000FF000000FFE5B38EFFFAF6F2FFE9C5A9FFE9C5ABFFEAC7
      ABFFE9C7ACFFD4966CFFD49D79FFD0976FFFD6A381FFCD8D66FFCD8F67FFD099
      73FFD19871FFC88A60FF241206FFE3B08BFFFAF6F1FFEAC9ADFFFFFFFFFFEAC9
      AFFFFFFFFFFFCC8C63FFF3CDAFFFFFFFFFFFE3C7B2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEABEA0FFC9885EFFE1AD86FFFAF4F0FFEACBB1FFEACCB2FFEACC
      B2FFEACCB2FFC78559FFEFBF9DFFFFFFFFFFCC926CFFFFFFFFFFFFFFFFFFFFFB
      F7FFFFF8F1FFE4AE8BFFC7895FFFDFA981FFF9F3EFFFEACEB6FFFFFFFFFFEBD0
      BAFFFFFFFFFFC8875BFFEFBEA0FFFDFCFAFFFEFCFBFFFEFDFDFFFEFDFCFFFDFB
      FAFFFDFCFBFFDDA784FFC07D51FFDDA77CFFF9F3EFFFEBD0B9FFEBD0BAFFEBD0
      BAFFEBD0BAFFCA8C63FFEAB798FFDDA47CFFDDA57EFFDBA27AFFD99F78FFD99F
      77FFD89E76FFD89D76FFBE835BFFD9A378FFF9F3EEFFEBD2BDFFFFFFFFFFEBD3
      BEFFFFFFFFFFC98A5FFFE6B491FFE2A680FFE1A680FFDEA27BFFDCA079FFDB9E
      77FFD99D75FFD49971FFBA7C55FFD7A073FFF8F2EDFFF7F0EAFFF6EDE6FFF4EA
      E2FFF3E7DEFFC38052FFEAB596FFF3F3EAFFEDF1E6FFEFF1E6FFEFF0E6FFEDF1
      E5FFF3F5EDFFD59B77FFAF6E42FFA37856FFCA9167FFD19566FFCE9161FFCB8D
      5CFFC98959FFC27D4FFFEFB599FFEAF3E8FF4FBE83FF6DC997FF6FC998FF52BE
      83FFE4F4E9FFDD9B79FFA96738FF000000FF000000FF000000FF000000FF0000
      00FF000000FFC58253FFEFCEB9FFDDFFFFFF86EEC7FFA1F4D7FFA1F6D7FF8BEE
      C7FFE0FFFFFFDDA184FFAA683CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF8F5026FFC28356FFD38A66FFE18E6EFFDC8C6AFFDA8A6BFFD789
      6CFFCD8A6AFFAA6B42FFA55D2CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF081832FF114386FF0F498FFF0E4689FF103E76FF09192EFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0716
      2FFF104C94FF11569AFF115698FF105192FF0E4886FF0D3C6FFF0A1624FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0E49
      96FF11569EFF0E4889FF0E4986FF104986FF134A84FF113F73FF0E2F55FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0B3C
      86FF7A96B7FF89B6E4FF6F9BC8FF133E6CFF174270FF204369FF103862FF0102
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1B56
      8FFFD9E8F7FF96C4F1FF8DBAE5FF7DA8D1FF88B4DFFFCDDFEEFF20609DFF0104
      05FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2044
      6FFFA5CAEEFFAACCEAFFA6D0F6FFA7D0F6FFAACCEAFFA6CDEEFF234E7AFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF030000FF4224
      16FF326BA6FF9BCCF8FFAED4F7FFAED4F7FFA4CFF6FF3272ADFF45281DFF0502
      00FF000000FF000000FF000000FF000000FF000000FF050100FF431C07FFBB46
      1AFFF4E2D4FF4C79A8FF4B79A7FF4B79A7FF4C79A8FFF3D6C2FFBD441AFF441B
      07FF060301FF000000FF000000FF000000FF010000FF3F1904FFC34A1DFFF6E4
      D6FFFFE4A3FFFFD470FFFFC967FFFFBF61FFFFB55DFFADAA76FF5E9670FF4D8D
      64FF3E7E52FF173922FF000000FF000000FF31190CFF895242FFFCC8AAFFFFD1
      97FFFEC76BFFFEBE66FFFEB862FFFEB05CFFA69A5FFF5FAA80FF94D4B3FFB9E6
      D0FF68BA8EFF2B8E55FF0D391EFF000000FF2679CBFF76B2EAFFB29D93FFFFB6
      5EFFFFB561FFFEB15FFFFEAB5BFFFEA457FF48875BFF8FD3B0FF91D6B0FFFFFF
      FFFF63BB8BFF65BB8EFF176634FF000000FF277BD0FF81B9EEFF9E6456FFF5BA
      83FFFFAB59FFFEA758FFFEA155FFFE9B51FF2F794AFF9BD4B5FFFFFFFFFFFFFF
      FFFFFFFFFFFF94D2B1FF176935FF000000FF324C64FF2375C9FF835D5DFFBE5E
      33FFFEB85FFFFEB860FFFEB860FFFEB860FF206C38FF60B98AFF5EB986FFFFFF
      FFFF5EB886FF65BB8EFF176634FF000000FF000000FF04090BFF0A0808FF6A2E
      11FF8E371AFFA2411FFFA74320FFA64120FF59542BFF268B51FF62B98CFF94D2
      B1FF62B98CFF268B51FF0D391EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C381CFF166433FF1769
      35FF166433FF0C381CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF020100FF693717FFA35932FF4C260FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF562B0EFFD68564FFE4BFB8FFC37047FF351B09FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF4F2911FFD27852FFE49E93FFDB8F74FFD69571FFC17745FF3A21
      0AFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF8A4A23FFE2A499FFE28371FFE29C8DFFDB9072FFDF8874FFB96E
      36FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF683818FFDE917CFFDF7560FFDF7A67FFDF6C55FFDF664CFFB173
      30FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2814
      07FFA25A32FFB4623DFFDB6C53FFDF5F45FFDF6A50FFDF664CFFB46D27FF3321
      0AFF000000FF000000FF000000FF000000FF000000FF000000FF47250FFFA259
      2AFFDF9D8CFFDF624AFFDF583EFFB2652EFFAB6A2AFFAD6B2BFF311E09FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFA55C33FFE2A3
      91FFDB5032FFDF5B3EFFB26532FF35210BFF080501FF090501FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFA35933FFE288
      78FFDF6145FFB16433FF331E0AFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF5E3416FFAF65
      38FFA15F2DFF321D0BFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000201FF17693AFF32A35DFF0F4C29FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0E562EFF64D689FFB8E4C0FF47C372FF09351CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF114F2BFF52D27CFF93E4A1FF74DB91FF71D699FF45C17DFF0A3A
      22FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF238A4DFF99E2A6FF71E286FF8DE29FFF72DB93FF74DF8CFF36B9
      72FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF186839FF7CDE95FF60DF79FF67DF80FF55DF70FF4CDF6CFF30B1
      78FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0728
      15FF32A25EFF3DB467FF53DB70FF45DF63FF50DF6EFF4CDF6CFF27B471FF0A33
      22FF000000FF000000FF000000FF000000FF000000FF000000FF0F4727FF2AA2
      5DFF8CDFA0FF4ADF67FF3EDF5EFF2EB268FF2AAB6EFF2BAD6FFF09311FFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF33A560FF91E2
      A6FF32DB56FF3EDF61FF32B269FF0B3522FF010805FF010905FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF33A35DFF78E2
      8CFF45DF66FF33B168FF0A331FFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF165E36FF38AF
      69FF2DA162FF0B321FFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000002FF080885FF121EC7FF06055FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF08066CFF465EFEFFB4C8FEFF263AECFF070342FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF070563FF304BFCFF80A7FEFF5874FEFF5B66FEFF2727EEFF0C04
      4BFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0A0DAAFF89AAFEFF4F81FEFF759AFEFF576FFEFF5482FEFF1612
      E8FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF060681FF6285FEFF356DFEFF4175FEFF2763FEFF1B57FEFF2A12
      E3FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0403
      32FF121AC6FF1B2EDBFF275BFEFF0F52FEFF215FFEFF1B57FEFF210DE8FF0F04
      44FF000000FF000000FF000000FF000000FF000000FF000000FF050559FF0B0F
      C8FF7795FEFF1657FEFF0D50FEFF0D0DDEFF1E0ED9FF1E0EDDFF0D0441FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF161FCBFF829F
      FEFF0D48FEFF0D4BFEFF1114DEFF0D0445FF03010BFF02010BFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF1320C5FF588A
      FEFF0F4DFEFF1113DDFF0A0543FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF060676FF181E
      DAFF1410CBFF0A0541FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000102FF195275FF3687B3FF0F3A55FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF113F5EFF6DC9ECFFC9F3FBFF4FACD6FF092539FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF113C57FF5ABEE8FFA2F0FBFF7ED4F0FF7CC7ECFF4B9BD4FF0B25
      3FFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF276E97FFA8EEF9FF7CE6F8FF99E8F8FF7CD1F0FF7EE2F6FF3A8E
      CCFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF1A5073FF88DDF4FF68E0F6FF71E2F7FF5DDFF6FF53DAF6FF3477
      C3FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF081E
      2CFF3686B2FF449FC7FF5CD9F2FF4CDBF6FF59DDF7FF53D8F5FF2B7AC6FF0B1D
      37FF000000FF000000FF000000FF000000FF000000FF000000FF10364FFF2D7F
      B3FF98E2F6FF51DCF5FF44D9F6FF3389C3FF2F76BCFF3077BFFF0A1D36FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF398AB6FFA0E6
      F8FF36D2F2FF45D6F6FF378DC5FF0D223AFF010309FF01040AFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF3788B3FF85E9
      F9FF4BD9F5FF368AC2FF0D2239FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF1B4968FF3D90
      C2FF317BB2FF0C2137FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0303
      0AFF000000FF000000FF000000FF000000FF000000FF000000FF0D0D1FFF1312
      2BFF000000FF000000FF000000FF000000FF000000FF000000FF0F0F29FF2727
      6BFF14143CFF000000FF000000FF000000FF000000FF0D0D1FFF7875FFFF7774
      FEFF12122BFF000000FF000000FF000000FF000000FF0F0F29FF625FF8FF6866
      F9FF3634A0FF0C0C27FF000000FF000000FF0D0D1FFF7875FFFF807CFFFF807C
      FEFF726FFDFF111129FF000000FF000000FF0F0F29FF605DF8FF6D6BFBFF7C7A
      FFFF605DF8FF201D68FF010102FF000000FF040408FF716EFCFF7B78FEFF8986
      FFFF7A77FDFF6A67FBFF100F29FF0F0E29FF5F5CF8FF6C6AFAFF7B78FFFF5F5D
      F7FF4643EDFF000005FF000000FF000000FF000000FF040308FF6B68F9FF7572
      FDFF8581FFFF7471FCFF6260F8FF5E5BF7FF6B68FAFF7977FFFF5E5BF7FF4542
      ECFF020207FF000000FF000000FF000000FF000000FF000000FF030308FF6360
      F6FF6E6BFBFF7E7CFFFF7C79FFFF7A77FFFF7775FFFF5C5AF7FF4441ECFF0202
      07FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0303
      08FF5A57F4FF7B77FFFF5C59FFFF5956FFFF7472FFFF4441EDFF020207FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0E0E
      28FF5B59F7FF7774FFFF5754FFFF5552FFFF706EFFFF4644F0FF090827FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0E0E28FF5A58
      F6FF6562FAFF7270FFFF716EFFFF6E6CFFFF6C6AFFFF5553F7FF3D3BEEFF0707
      26FF000000FF000000FF000000FF000000FF000000FF0E0E28FF5957F6FF6461
      FAFF726FFFFF5856F6FF403FEBFF3C3AEAFF4E4BF4FF6665FFFF4E4CF5FF3432
      EBFF070626FF000000FF000000FF000000FF0E0D28FF5956F6FF6360FAFF6F6E
      FFFF5754F6FF3F3EEBFF020207FF020207FF3330E6FF4543F2FF6160FFFF4846
      F4FF2D2BE9FF060525FF000000FF000000FF14133DFF5654F5FF615FFAFF5653
      F6FF3F3DEAFF020207FF000000FF000000FF010107FF2A28E3FF3F3DF1FF4A48
      F6FF2F2DEAFF07063AFF000000FF000000FF000000FF13123CFF4D4AF2FF3E3C
      EBFF020207FF000000FF000000FF000000FF000000FF010107FF2220E1FF2F2D
      EAFF07063AFF000000FF000000FF000000FF000000FF000000FF0F0E3BFF0202
      07FF000000FF000000FF000000FF000000FF000000FF000000FF010107FF0606
      3AFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF050505FF3E3E
      3EFF7E7E7EFF9A9A9AFFB3B3B3FFB1B1B1FF909090FF767676FF303030FF0202
      02FF000000FF000000FF000000FF000000FF000000FF1F1F1FFF979797FFD0D0
      D0FFE8E8E8FFF3F3F3FFFDFDFDFFFCFCFCFFEDEDEDFFE0E0E0FFC1C1C1FF8484
      84FF121212FF000000FF000000FF000000FF000000FF8B8B8BFFE1E1E1FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFCFCF
      CFFF6A6A6AFF000000FF000000FF000000FF000000FFA9A9A9FFF8F8F8FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFEAEA
      EAFF989898FF000000FF000000FF000000FF000000FFA7A7A7FFF7F7F7FFE7E7
      E7FFEFEFEFFFF6F6F6FFFBFBFBFFFAFAFAFFF0F0F0FFDEDEDEFFC2C2C2FFE6E6
      E6FF959595FF000000FF000000FF000000FF000000FFA5A5A5FFF6F6F6FFEBEB
      EBFFDEDEDEFFD6D6D6FFD5D5D5FFD1D1D1FFC2C2C2FFBBBBBBFFBFBFBFFFE5E5
      E5FF949494FF000000FF000000FF000000FF000000FFA4A4A4FFF5F5F5FFEEEE
      EEFFE6E6E6FFE2E2E2FFE6E6E6FFE1E1E1FFCDCDCDFF3AA36CFF2F9E63FFDDE1
      DEFF929292FF000000FF000000FF000000FF000000FFA2A2A2FFF4F4F4FFEAEA
      EAFFE1E1E1FFDDDDDDFFE3E3E3FFDEDEDEFFC9C9C9FF349F65FF58B280FF2697
      55FF8C918EFF000000FF000000FF000000FF000000FFA0A0A0FFF3F3F3FFE7E7
      E7FFDDDDDDFF3BA46DFF36A26CFF32A066FF2E9C60FF53AE7AFF90CBA9FF4DAA
      72FF168E44FF000603FF000000FF000000FF000000FF9F9F9FFFF2F2F2FFE2E2
      E2FFD8D8D8FF35A269FF95CEAFFF93CDACFF90CBA9FF8FCBA7FF72BB8FFF89C7
      A0FF44A466FF068533FF000802FF000000FF000000FF9D9D9DFFF0F0F0FFDEDE
      DEFFD4D4D4FF2F9E61FF93CDACFF6DB98DFF69B788FF64B584FF5FB27EFF65B4
      81FF82C197FF3A9F5AFF007C23FF000000FF000000FF9A9A9AFFDEDEDEFFF3F3
      F3FFDBDBDBFF279A59FF8FCAA8FF8CC8A4FF89C5A0FF87C49DFF68B584FF81C1
      96FF46A464FF00711DFF001605FF000000FF000000FF2F2F2FFF9D9D9DFFCECE
      CEFFEDEDEDFF209650FF1A9048FF148E42FF0F8A3AFF389E5CFF7EC095FF44A2
      60FF02721DFF001303FF000000FF000000FF000000FF000000FF151515FF6363
      63FF959595FFA0A0A0FFAAAAAAFFA6A6A6FF949494FF05812CFF41A05DFF006D
      1BFF001103FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF080808FF1C1C1CFF1A1A1AFF040404FF00761EFF02791CFF000F
      02FF000000FF000000FF000000FF000000FF050505FF3E3E3EFF7E7E7EFF9A9A
      9AFFB3B3B3FFB1B1B1FF909090FF767676FF303030FF020202FF000000FF0000
      00FF000000FF000000FF000000FF1F1F1FFF979797FFD0D0D0FFE8E8E8FFF3F3
      F3FFFDFDFDFFFCFCFCFFEDEDEDFFE0E0E0FFC1C1C1FF848484FF121212FF0000
      00FF000000FF000000FF000000FF8B8B8BFFE1E1E1FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFCFCFCFFF63A16AFF0002
      00FF000000FF000000FF000000FFA9A9A9FFF8F8F8FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFEAEAEAFF65B16EFF4286
      4BFF000000FF000000FF000000FFA7A7A7FFF7F7F7FFD0D0D0FFDCDCDCFFE8E8
      E8FFF9F9F9FFD4ECD7FF85CD8EFF61BF6DFF5EBB69FF5BB665FF77C181FF73BD
      7CFF39773FFF000000FF000000FFA5A5A5FFF6F6F6FFE2E2E2FFCDCDCDFFC3C3
      C3FFB2CAB5FF77C382FF93D29BFFAADAB1FFA7D9AEFFA4D8ACFFA1D6A9FF9ED5
      A6FF6AB372FF3C8142FF000000FFA4A4A4FFF5F5F5FFEEEEEEFFE6E6E6FFE2E2
      E2FF98D09EFF8DCF96FFA9D9B0FF78C282FF55AE5FFF50A85AFF6DB676FF69B2
      72FF316D36FF000000FF000000FFA2A2A2FFF4F4F4FFEAEAEAFFE1E1E1FFDDDD
      DDFF6FC178FF5BB766FF58B262FF6DB073FFBEBEBEFFE2E2E2FF53975AFF3270
      38FF000101FF020502FF000000FFA0A0A0FFF3F3F3FFE7E7E7FFDDDDDDFFD9D9
      D9FFE0E0E0FFDBDBDBFFC3C3C3FFB6B7B6FFBABABAFFE1E1E1FF59905EFF0002
      00FF000000FF000000FF000000FF9F9F9FFFF2F2F2FFE2E2E2FFD8D8D8FFD5D5
      D5FFDCDCDCFFD8D8D8FFBFBFBFFFB2B2B2FF69A06EFFE0E0E0FF898989FF0000
      00FF000000FF000000FF000000FF9D9D9DFFF0F0F0FFDEDEDEFFD4D4D4FFD2D2
      D2FFDBDBDBFFD1D4D2FFBDBEBDFF5D9A62FF529458FFDEDEDEFF838383FF255C
      29FF2B7331FF276D2CFF1F5B23FF9A9A9AFFDEDEDEFFF3F3F3FFDBDBDBFFD2D2
      D2FFDBDBDBFFD6D6D6FF629F68FF60A868FF5BA363FF337E39FF2F7834FF4F96
      56FF81C88CFF59A061FF133A16FF2F2F2FFF9D9D9DFFCECECEFFEDEDEDFFF4F4
      F4FFF5F5F5FF4F9957FF5EA666FF8CCD96FF89CB93FF86CA90FF83C98DFF80C8
      8BFF5EA666FF184E1BFF071808FF000000FF151515FF636363FF959595FFA0A0
      A0FFAAAAAAFFA6A6A6FF508754FF549C5CFF519858FF286F2DFF246929FF2164
      25FF17481AFF071708FF000000FF000000FF000000FF000000FF000000FF0808
      08FF1C1C1CFF1A1A1AFF040404FF215725FF205B24FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF17451BFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040303FF1C1713FF342A23FF46372DFF654F
      3EFFD4A37DFF967053FF050301FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF080606FFB7927CFFE7BA9CFFE4B596FFE0B191FFDAAD
      8EFFDCB497FFCF9E78FF8B5F3DFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF6B5749FFE8BFA3FFE9C8AFFFE5C2A8FFE1BCA1FFDCB5
      98FFD5AA89FFD0A381FFB07241FF000000FF000000FF000000FF000000FF0000
      00FF000000FF050404FFDBAA89FFE7C0A7FFE0B99EFFD8AB8AFFD2A481FFCE9C
      75FFD1A583FFBD855AFF4D2E1AFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF715743FFD9AA87FFDAB193FFD8AF91FFCB9870FFC38F
      66FFC89B76FFB17048FF311A11FF000000FF000000FF000000FF000000FF1C16
      13FF606060FF5F5F5FFF000000FF604530FFBC8152FFC9966DFFCB9E7AFFBB84
      57FFC29169FFA5613CFF22100AFF000000FF000000FF080606FFA1816CFFC8A9
      95FFB6B6B6FFBBBBBBFF575757FF000000FF2A1B0FFFA7673CFFBA825AFFBF8E
      65FFBA895EFF984E31FF110705FF000000FF040303FFC49F85FFE8BFA2FFE5BE
      A2FFB19987FFADADADFF515151FF000000FF070707FF27160CFF985231FFAC70
      4AFFA15D3DFF793622FF020101FF000000FF1B1612FFE3B392FFE8C5ACFFE3BF
      A5FFDBAF8EFFAF896CFF2E2115FF454545FF565656FF090909FF23100BFF883F
      28FF5F2B1AFF050200FF000000FF000000FF32261FFFDDAD8BFFE2BDA3FFD8AA
      88FFD9B293FFCF9E78FF9F7454FF929292FFA8A8A8FF464646FF040404FF1007
      03FF000000FF000000FF000000FF000000FF423127FFD7A581FFDCB598FFD0A0
      7BFFCB9971FFCFA381FFC79872FF886A56FF868686FF2F2F2FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF5E4531FFD0A07AFFD7AD8EFFC996
      6DFFC28E64FFBC875AFFBF8B62FFBB875FFF7F4E39FF030202FF000000FF0000
      00FF000000FF000000FF000000FF050301FFC1885CFFD1A582FFCC9E79FFCB9D
      79FFC79872FFC2916AFFBD8C63FFA76743FF442014FF000000FF000000FF0000
      00FF000000FF000000FF000000FFBF8456FFC59166FFCDA17EFFC4956EFFB579
      51FFAA6844FFA25C3BFF9B5033FF703321FF050200FF000000FF000000FF0000
      00FF000000FF000000FF000000FF845733FFBE865AFFB87C54FFA35E37FF4826
      18FF2F170EFF21100AFF110705FF020101FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF060302FF7A472AFFA05935FF040101FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF897E
      73FFBBAFA3FF9C9084FF000000FFAD9F92FF9C9084FF544E47FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7D73
      68FFC2B7ADFF635B53FF000000FF7A7066FFA79A8DFF8A7F74FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF726960FFA39689FF9488
      7BFF9E9185FF3C3732FF000000FF4A443EFF7C7268FF84786EFF3C3732FF2D29
      24FF020200FF000000FF000000FF060505FF26221FFF9A8D81FF9C9084FF8579
      6FFF544D46FF4E4842FF7E746AFF6C645BFF816A56FFA5907BFF938372FF544D
      46FF060404FF000000FF000000FF030202FF9A8D82FFB9ADA1FF81756BFF8175
      6BFFA99079FFB9A693FFB2A08AFFAF9680FF9E8C7BFF826B59FF6F6155FF9488
      7BFF040402FF000000FF000000FF030303FF9C9084FFB0A295FF7D7369FF7A70
      66FF756B62FF6A6159FF2C2824FF544D46FF7E746AFF7A7066FF756B62FF6E65
      5CFF000000FF000000FF000000FF010101FF58514AFF403B36FF564F48FF3B36
      31FF312D29FF1F1B19FF030303FF151310FF181614FF23201EFF171513FF0E0D
      0CFF000000FF000000FF000000FF000000FF433D39FF9E9185FFCCC2B9FFBFB3
      A9FFA5978AFF282422FF000000FF1C1917FF8F8377FFC1B7ACFFBFB3A9FFA79A
      8DFF0C0A0AFF000000FF000000FF000000FF504943FF82766DFFCCC2B9FF776E
      64FF6F665DFF2C2925FF000000FF1D1C19FF84786EFFC1B7ACFF766D63FF796F
      65FF090807FF000000FF000000FF000000FF4B453FFF82766DFFCCC2B9FF766D
      63FF796F65FF2C2825FF000000FF1A1815FF94887BFFC1B7ACFF766D63FF7A70
      66FF050404FF000000FF000000FF000000FF443F39FF84786EFFC2B7ADFF7A70
      66FF7D7369FF34302BFF010100FF1F1D1AFF94887BFFB9ADA1FF7A7066FF7D73
      69FF000000FF000000FF000000FF000000FF3C3732FF37322EFF312D29FF2A27
      23FF25221FFF1E1B19FF020202FF0E0C0BFF0A0908FF060605FF030302FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF221E
      1BFF7A6A5FFFD4BAA4FFEACDB4FFE9CBB2FFD0B59EFF766659FF201C19FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF50463DFFDDC1
      A9FFF9E9DCFFF6E8DDFFF3E5DAFFF3E5DAFFF5E7DCFFF5E4D6FFD4B49AFF4B40
      37FF000000FF000000FF000000FF000000FF000000FF4F453CFFE7C9AFFFF7EA
      DFFFEEDED0FFE3C0A6FFD8AD88FFD7AB85FFDDBA9BFFEBD6C7FFF3E6D9FFD9B5
      97FF483C32FF000000FF000000FF000000FF201C18FFD6B9A0FFF6E9DDFFECD8
      C5FFD7AB80FFDCBA99FFF6ECE3FFF5ECE2FFE4C8ADFFD2A679FFE6CEB9FFF1E2
      D5FFC4A081FF1D1713FF000000FF000000FF746255FFF4E3D4FFEFDCCDFFD5A7
      7CFFD09F75FFFBF8F5FFFCF8F5FFFCF8F5FFFBF8F5FFD1A780FFCFA379FFEAD5
      C2FFEAD4C1FF675240FF000000FF000000FFC6A58BFFF3E5D9FFDFBA9DFFCF9F
      73FFCD9D70FFF5EBE3FFE4CBB3FFE7D3BEFFFBF8F6FFE5D3BEFFC39769FFD6B3
      90FFEEE0D2FFAF8765FF000000FF000000FFD8B293FFF2E5DAFFD1A57CFFCC9C
      6FFFC7996AFFC49769FFE2CCB5FFF8F3EEFFF6EEE8FFD9BCA0FFC19366FFC49A
      6FFFF0E2D6FFBD8F66FF000000FF000000FFD1A989FFF2E4D9FFD1A478FFC498
      69FFC39668FFC39567FFFAF6F2FFF3EAE1FFC1946BFFBD8E63FFBD8E62FFBF94
      6BFFEFE3D5FFB7865CFF000000FF000000FFB58F71FFEFE1D3FFD9B494FFC797
      6AFFC29467FFC09265FFBE8F64FFBE8F64FFBA8A61FFB88961FFB78960FFCBA6
      85FFEADCCCFF9D7049FF000000FF000000FF644E3AFFE4CCB8FFEAD6C4FFC798
      6FFFBE8F64FFBE8F64FFF7F1ECFFF6F0EAFFB6885DFFB6885DFFB48861FFE2CE
      BAFFD9BCA5FF573B25FF000000FF000000FF1A140DFFAE825DFFEAD8C9FFE3CD
      B9FFBF9369FFB98B60FFCFAF93FFCFAF93FFB6885DFFB1865FFFDABFA9FFE4D1
      BFFF9B673DFF170F09FF000000FF000000FF000000FF3C2C1EFFB28055FFE7D5
      C3FFE5D2BEFFC9A584FFB78D65FFB58963FFC4A07EFFE0CCB9FFE3D0BDFFA269
      3CFF372313FF000000FF000000FF000000FF000000FF000000FF3B2819FFA16E
      45FFD7BAA2FFE9DACAFFECE0D1FFECE0D1FFE8D8C8FFD3B49BFF966133FF3621
      11FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF180F
      09FF53361EFF915E35FF9F6638FF9E6436FF8D582EFF503118FF160D06FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFEAAA7EFFEAAA7EFFEAAA7EFFEAAA7EFFEAAA
      7EFFEAAA7EFFE8A87AFFE6A375FFE29F6EFFE29A69FFE19660FFDD8F57FFD98A
      50FFD88447FFD67E3CFFD27533FFEAAA7EFFF3D0B6FFF3D0B6FFF3D0B6FFF2D0
      B6FFF1CEB2FFF0CBAFFFEFC9ABFFEEC5A7FFEDC1A2FFEBBF9DFFEABA98FFE8B6
      93FFE6B38EFFE4AF88FFCD6C21FFEAAA7EFFF3D0B6FFEFC5A8FFEFC3A5FFEEC1
      A1FFECBE9DFFEBBB97FFE9B792FFE8B38DFFE6AF87FFE3AB80FFE2A679FFE0A2
      72FFDE9D6CFFE2A97EFFC96018FFEAAA7EFFF2CFB4FFFCF4EEFFECBE9EFFFBF3
      EDFFFDF8F4FFFDF7F4FFFCF7F3FFF4DBC9FFE7B38DFFF7E6DAFFE3AC82FFF6E4
      D6FFDB9660FFDFA274FFC35716FFE6A677FFF0CBAFFFFDF8F5FFEAB997FFFDF8
      F4FFE7B28BFFFDF8F5FFE3A97EFFF9EEE5FFEECDB3FFFDF8F5FFE5B28DFFFDF9
      F6FFD88E55FFDD9D6BFFBF4C14FFE29F6CFFEEC7A7FFFEFDFCFFFDF7F3FFFEFA
      F8FFE3AB80FFFCF7F4FFE0A272FFF9ECE3FFFAF2EBFFFDF8F4FFE3AD85FFFAF1
      EAFFD5884BFFDA9864FFBC4113FFE19660FFECC0A0FFFCF7F3FFE5AC83FFFCF6
      F2FFE1A375FFFCF7F3FFDD9A67FFF8EBE0FFF0D3BDFFF3DECEFFE0A87DFFFAF0
      E9FFD28242FFD9935CFFB63A12FFDB8D51FFEABA98FFFCF6F2FFE1A577FFFCF5
      F1FFDD9C69FFFCF6F2FFDA935CFFF7E9DEFFD68B4FFFEFD1B9FFDEA375FFFDFA
      F7FFF7E8DDFFD78E57FFB53311FFD68341FFE7B48FFFE0A272FFDE9D6CFFDC99
      65FFDB945EFFD99058FFD78C51FFD5884BFFD38446FFD28041FFD07C3CFFCF79
      37FFCE7733FFD58C52FFB33111FFD27533FFE4AE86FFE3AA80FFE1A779FFDFA2
      74FFDEA06FFFDC9C6BFFDB9866FFDA9661FFD9935CFFD79059FFD78E55FFD58C
      52FFD58B51FFD58B51FFB33111FFCD6C21FFC96319FFC85E18FFC55716FFC151
      15FFBF4C14FFBC4513FFBA3F13FFB83C12FFB63712FFB53311FFB33111FFB331
      11FFB33111FFB33111FFB33111FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF482E18FF926537FFBA8248FFC186
      4AFFC1874BFFC1874BFFC1884BFFC2874BFFC0864BFFA3713EFF6F4220FF0401
      01FF000000FF000000FF000000FF000000FF956536FFE4E0DAFFF5F1EBFFF8F4
      EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2ECFFF2E6D7FFE2B17BFFD28D
      5FFF050201FF000000FF000000FF000000FFB47C43FFF7F3EFFFFAE0C7FFFBE1
      C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6B7FFFFFBF8FFB5CBC1FF56A4
      D8FF84B0DBFF449CD0FF0F374DFF000000FFBE8348FFF9F5F1FFFCE3CDFFFBE3
      CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6B9FFAEE3F1FF75BDE7FFB3D2
      F0FFE5F3FFFFABD2EFFF407DB5FF000000FFBF8447FFF9F5F1FFFCE3CFFFFBE4
      D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC3FFAECDC9FF80D5EEFFB1E3F9FF8ABF
      E7FFADD3F6FFC3E0FCFF6199CCFF000000FFBF8447FFF9F4F0FFFCE6D3FFFCE6
      D4FFFDE7D3FFFCE4D1FFFBE3CDFFBDD4D0FF7BD4EEFFC3F6FDFF6ADDF6FF6BCA
      EDFF61A2D7FF6297C7FF0C161DFF000000FFBF8346FFF9F4EFFFFEE7D7FFFDE7
      D6FFFDE7D5FFFDE6D4FFBCD6D5FF77D3EEFFC7F7FDFF5DDCF5FF59E2F7FF78D6
      F2FF4FA0E0FFA8815CFF000000FF000000FFBF8345FFF9F4EDFFFEE8D8FFFEE8
      D8FFFEE8D7FFAFC5CCFF75CBE7FFC7F7FDFF5CDCF5FF58E1F7FF79D4F1FF4998
      DBFFD2DFE9FFBF7D41FF000000FF000000FFBF7F43FFF9F3ECFFFEE8D6FFFEE8
      D7FFB2C5CCFF74B8D6FFC1F6FDFF61DFF7FF5BE2F8FF77D3F0FF4797DAFFE2D5
      C8FFFAF2EAFFBF7A3EFF000000FF000000FFBE7D41FFF8F2EBFFFEE7D6FFA5B5
      BEFF78B5D5FF8FB6D1FF53C9E4FF59DFF5FF76D0EDFF4F9AD9FFE1D6CDFFFBE1
      C9FFFBF7F2FFBE763BFF000000FF000000FFBE7A3EFFF8F1E8FFFEE5D5FF4188
      A9FFE0F2FFFF5299D8FF1878BDFF4797C4FF468BC1FFDAD2CDFFFBE0C9FFFBE1
      C8FFFDFAF7FFBA7037FF000000FF000000FFBD763CFFF7F0E6FFF8B353FF2C64
      81FF93C7F9FF90C9F9FF3F84C9FF2466A5FFD2A763FFF7B14FFFF7B14DFFF7B1
      4DFFFCF9F5FFB86A33FF000000FF000000FFBA7238FFF7EDE3FFFDC16CFF1640
      55FF295F86FF4A88BBFF6E9EB2FFE3C999FFFFD694FFFFD593FFFFD492FFFBBD
      63FFFBF7F4FFB4622DFF000000FF000000FFB66B34FFF4EADEFFFDBE66FFFCBC
      65FFFBBD63FFFCBD62FFFCBD62FFFCBC60FFFBBC61FFFBBB5FFFFCBD5EFFFCBB
      60FFFBF9F6FFAF5D29FF000000FF000000FFA35B2CFFEBE4DEFFF5EADDFFF6EB
      DEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3EBFFFAF2EAFFFCF7F3FFFAF6
      F2FFEFEFEEFF984F22FF000000FF000000FF4E2B14FF874922FFAD5D2CFFB361
      2DFFB3612DFFB3612DFFB3602DFFB3602CFFB2602BFFB2602BFFB25F2BFFAC5C
      2AFF87471FFF472511FF000000FF000000FF000000FF000000FF482E18FF9265
      37FFC78A4DFFC88B4DFFC1884BFFC2874BFFC3874AFF714322FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFBF8246FFF7F2
      ECFFF8F4EEFFF8F3EDFFF8F3EDFFF8F2ECFFF2E6D7FFE2B17BFFD28B5EFF0502
      01FF000000FF000000FF000000FF000000FF000000FF000000FFBE8348FFF9F5
      F1FFFCE3CDFFFBE3CDFFF9E0C8FFF8DCC1FFFDFBF8FFFCE6CDFFE2B583FF7B4D
      2AFF000000FF000000FF000000FF000000FF000000FF000000FFBF8447FFF9F5
      F1FFFCE3CFFFFCE4CFFFFAE1CAFFF9DDC3FFF4E9DFFFF7F2ECFFF5EFE9FFBE7A
      42FF000000FF000000FF000000FF000000FF000000FF050505FFBF8547FFF9F4
      F0FFFCE6D3FFFDE7D3FFFBE3CDFFFAE0C8FFF5D6BAFFF3D4B4FFF8F4F0FFBD7E
      43FF020202FF000000FF000000FF000000FF323232FF7A7A7AFFC4884AFFF9F4
      EFFFFEE7D7FFFDE7D5FFFCE6D2FFFBE1CCFFF8DCC1FFF6DABCFFFAF4EFFFC382
      46FF535353FF1F1F1FFF000000FF232323FF999999FFCCCCCCFFC78A4CFFF9F4
      EDFFFEE8D8FFFEE8D7FFFDE5D3FFFCE4D1FFFAE0C7FFF9DDC2FFFAF4EDFFC784
      48FFC2C2C2FF727272FF121212FF696969FFD2D2D2FFE8E8E8FF7B7B7BFF7B7B
      7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
      7BFFE8E8E8FFC3C3C3FF494949FF7D7D7DFFFCFCFCFFFCFCFCFFCBCBCBFFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFC5C5
      C5FFFCFCFCFFFCFCFCFF6E6E6EFF7C7C7CFFF9F9F9FFF9F9F9FFAAAAAAFFDFDF
      DFFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFDFDFDFFFA2A2
      A2FFF9F9F9FFF9F9F9FF5F5F5FFF787878FFD7D7D7FFD7D7D7FF969696FFD8D8
      D8FFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFD7D7D7FF8D8D
      8DFFD7D7D7FFD7D7D7FF3D3D3DFF737373FFBABABAFFBABABAFF8C8C8CFFD4D4
      D4FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFD3D3D3FF8282
      82FFBABABAFFBABABAFF282828FF6E6E6EFFB4B4B4FFB4B4B4FF949494FF8080
      80FF808080FF777777FF6C6C6CFF5F5F5FFF505050FF414141FF404040FF6C6C
      6CFFB4B4B4FFB4B4B4FF232323FF676767FFA6A6A6FFB4B4B4FF808080FFAEAB
      A9FFC4BFBCFFC4BFBCFFC4BFBCFFC4BFBCFFC4BFBCFFC4BFBCFFACA9A7FF2A2A
      2AFFB4B4B4FF9A9A9AFF212121FF3A3A3AFF4B4B4BFF565656FFC7945FFFF9F7
      F6FFF9F1ECFFF9F1EBFFF8F0E9FFF7EDE6FFF4EAE1FFF2E8DEFFFAF8F6FFC793
      5FFF222222FF1B1B1BFF0F0F0FFF000000FF000000FF000000FFC6935EFFCA97
      63FFCA9663FFCA9663FFCA9663FFCA9662FFC99662FFC99662FFCA9763FFC692
      5EFF000000FF000000FF000000FF000000FF000000FF302413FFAE8548FFEABB
      80FFE8B675FFE6B16BFFE4AF66FFD4A158FFC99853FFB68B4CFFB4894AFFA57C
      44FF94713DFF41321BFF040301FF000000FF000000FF5E4726FFEABF8BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9F4FFFBF3EAFFF8EBD9FFF8E6D3FFF5DF
      C5FFE9CBA5FFCE9B56FF513D21FF000000FF000000FF70542EFFEBC599FFFFFF
      FFFFFCEFE2FFFDF0E7FFFDF1EBFFFDF5EEFFFDF8F1FFFDFAF7FFFFFCFAFFFFFF
      FFFFFEFBF7FFF4DABFFFC89552FF000000FF000000FF7A5A31FFEBCAA4FFFFFD
      FBFFFDE9D5FFFDEBD8FFFDEADBFFFDEDDFFFFDF0E2FFFDF1E4FFFCF0E4FFFFFF
      FFFFE09F6EFFFFFBF9FFDFB786FF000000FF000000FF856235FFEDD0B1FFFFF6
      F0FFFAE1CAFFFBE3CCFFFBE3D0FFFBE6D3FFFBE9D5FFFCE9D8FFFCEADBFFFFFF
      FDFFD29C6FFFEED9C0FFBA894BFF000000FF000000FF946C3AFFF0D9C0FFFBED
      E1FFF9DABFFFF9DCC1FFF9DEC4FFFAE0C7FFFAE2CAFFFAE2CDFFFAE5D0FFFFFE
      FDFFCB8E58FFBF8B4CFF362815FF000000FF000000FFA67941FFF5E7D8FFFAE5
      D2FFF9DABBFFF9DBBBFFFADBBEFFFADDC0FFFADDC0FFF9DDC3FFFBE1C8FFFFFD
      FBFFC89355FF0D0A04FF000000FF000000FF000000FFB78447FFFCF6F0FFF9DF
      C7FFF9DCBCFFFADCBEFFFADBC0FFFADDC2FFFADDC1FF3DA46CFF2F9E63FFF8F9
      F5FFC08C51FF0B0803FF000000FF000000FF060502FFB88449FFFEFBF7FFF9DC
      C0FFF8DCBEFFF8DCBEFFF8DBBFFFF9DDBFFFF9DDBFFF37A065FF58B280FF2697
      55FFAE8044FF010100FF000000FF000000FF150D07FFB88550FFFEFCF9FFF9DC
      BEFFF8DBBEFF3BA46DFF37A26CFF33A066FF2F9D60FF53AE7AFF90CBA9FF4DAA
      72FF168E43FF000603FF000000FF000000FF1B110AFFB68554FFFEFEFDFFFADE
      C1FFFADCBEFF35A269FF95CEAFFF93CDACFF90CBA9FF8FCBA7FF72BB8FFF89C7
      A0FF44A466FF068533FF000802FF0D0805FF6D4928FFD5AD8BFFFDF0E5FFF7C7
      A1FFF7CFACFF2F9E61FF93CDACFF6DB98DFF69B788FF64B584FF5FB27EFF65B4
      81FF82C197FF3A9F5AFF007C23FF362313FF976335FFB38457FFD9A479FFD89D
      6DFFD79A68FF279A59FF8FCAA8FF8CC8A4FF89C5A0FF87C49DFF68B584FF81C1
      96FF46A464FF00711DFF001605FF52341BFFC7A384FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF209650FF1A9048FF148E42FF0F8A3AFF389E5CFF7EC095FF44A2
      60FF07751DFF001303FF000000FF3C2513FFB78F6BFFD6B9A2FFDFC5B2FFE7D4
      C2FFEEDFD3FFF5EAE2FFFBF4EFFFFDFAF6FFFFFEFDFF0A8630FF41A05DFF127D
      27FF363415FF000000FF000000FF0B0603FF4A2E18FF5B391EFF663F22FF7146
      25FF7A4C28FF84522CFF8C572EFF945F37FF99673FFF057B21FF02791CFF6951
      26FF1D1109FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF7F7F7FFFC6C6C6FFC3C3C3FFBFBFBFFFBABABAFFB5B5B5FFAFAFAFFF6E6E
      6EFF000000FF000000FF000000FF000000FF000000FF000000FF0C0C0CFF8888
      88FFDCDCDCFFE6E3E3FFE1DEDCFFDFDCDCFFDFDCDBFFDEDBDBFFEEECECFFA4A4
      A4FF000000FF000000FF000000FF000000FF000000FF393939FFB6B6B6FFDFDF
      DFFFEAEAEAFFCFCAC9FFCBC5C4FFCAC3C2FFC8C2C0FFC7C0C0FFDCD9D8FF9D9D
      9DFF000000FF000000FF000000FF000000FF000000FFCBCBCBFFE9E9E9FFE9E9
      E9FFE2E1E1FFCBC5C3FF979696FF959494FF939292FF919090FFDBD7D6FF9797
      97FF000000FF000000FF000000FF000000FF000000FFC5C5C5FFEFEFEFFFE1E1
      E1FFDDDDDDFFC8C2C1FFC8C1C0FFC5C0BEFFC4BEBDFFC2BCBAFFDAD6D5FF9090
      90FF000000FF000000FF000000FF000000FF000000FFBFBFBFFFECECECFFE0E0
      E0FFDDDCDCFFC7C0BFFF919090FF8E8E8EFF8C8C8CFF898989FFD9D5D4FF8A8A
      8AFF000000FF000000FF000000FF000000FF000000FFBABABAFFECECECFFDFDF
      DFFFDAD9D9FFC5BEBDFFC3BDBBFFC2BBBAFFC0BAB8FFBFB8B7FFD7D3D3FF8383
      83FF000000FF000000FF000000FF000000FF000000FFB4B4B4FFECECECFFDEDE
      DEFFD9D8D8FFC2BCBAFFC1BAB9FFC0B9B8FF9FC8A3FF4EA854FFD7D3D1FF7C7C
      7CFF000000FF000000FF000000FF000000FF000000FFAEAEAEFFEBEBEBFFDDDD
      DDFFD7D5D5FFC0BAB8FFBFB8B7FFBDB7B5FF39A040FF359335FFD6D1D0FF7676
      76FF000000FF000000FF000000FF000000FF000000FFA7A7A7FFEAEAEAFFDDDD
      DDFFD5D4D3FFBFB8B6FFBDB6B5FFBCB5B3FFBAB3B2FFBAB2B0FFD4D0CFFF7171
      71FF000000FF000000FF000000FF000000FF000000FFA1A1A1FFF0F0F0FFE0E0
      E0FFD4D2D2FFBDB5B4FFBBB4B3FFBAB3B1FFB9B1B0FFB8B0AEFFD4CFCEFF6B6B
      6BFF000000FF000000FF000000FF000000FF000000FF797979FFB2B2B2FFD4D4
      D4FFE1DFDFFFC4BEBCFFBCB4B2FFB8B0AFFFB8B0ADFFB6AEADFFD3CECDFF6666
      66FF000000FF000000FF000000FF000000FF000000FF000000FF2A2A2AFF6E6E
      6EFFA2A2A2FFC5C4C3FFD9D4D3FFD4CFCEFFD3CECDFFD3CECDFFE8E5E5FF6262
      62FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF212121FF626262FF727272FF6E6E6EFF696969FF656565FF616161FF4F4F
      4FFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7F7F7FFFC6C6C6FFC3C3C3FFBFBFBFFFBABA
      BAFFB5B5B5FFAFAFAFFF6E6E6EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF0C0C0CFF888888FFDCDCDCFFE6E3E3FFE1DEDCFFDFDCDCFFDFDC
      DBFFDEDBDBFFEEECECFFA4A4A4FF000000FF000000FF000000FF000000FF0000
      00FF393939FFB6B6B6FFDFDFDFFFEAEAEAFFCFCAC9FFCBC5C4FFCAC3C2FFC8C2
      C0FFC7C0C0FFDCD9D8FF9D9D9DFF000000FF000000FF000000FF000000FF0000
      00FFCBCBCBFFE9E9E9FFE9E9E9FFE2E1E1FFCBC5C3FF979696FF959494FF9392
      92FF919090FFDBD7D6FF979797FF000000FF000000FF000000FF000000FF1C16
      13FFADADADFFB8B8B8FFE1E1E1FFDDDDDDFFC8C2C1FFC8C1C0FFC5C0BEFFC4BE
      BDFFC2BCBAFFDAD6D5FF909090FF000000FF000000FF080606FFA1816CFFC8A9
      95FFB6B6B6FFBBBBBBFFABABABFFDDDCDCFFC7C0BFFF919090FF8E8E8EFF8C8C
      8CFF898989FFD9D5D4FF8A8A8AFF000000FF040303FFC49F85FFE8BFA2FFE5BE
      A2FFB49C8AFFADADADFFA5A5A5FFD9D8D8FFC4BDBCFFC3BDBBFFC2BBBAFFC0BA
      B8FFBFB8B7FFD7D3D3FF838383FF000000FF1B1612FFE3B392FFE8C5ACFFE3BF
      A5FFDBAF8EFFB48E72FFD7C9BEFF979797FF737272FFBFB9B8FFC0B9B8FF9FC8
      A3FF4EA854FFD7D3D1FF7C7C7CFF000000FF32261FFFDDAD8BFFE2BDA3FFD8AA
      88FFD9B293FFCF9E78FFA37859FF929292FFA8A8A8FF636262FFBCB6B4FF39A0
      40FF359335FFD6D1D0FF767676FF000000FF423127FFD7A581FFDCB598FFD0A0
      7BFFCB9971FFCFA381FFC79872FF886A56FF868686FF767473FFBCB5B3FFBAB3
      B2FFBAB2B0FFD4D0CFFF717171FF000000FF5E4531FFD0A07AFFD7AD8EFFC996
      6DFFC28E64FFBC875AFFBF8B62FFBB875FFF83513CFFB9B0AFFFBAB3B1FFB9B1
      B0FFB8B0AEFFD4CFCEFF6B6B6BFF050301FFC1885CFFD1A582FFCC9E79FFCB9D
      79FFC79872FFC2916AFFBD8C63FFA76743FFAD8779FFBCB4B2FFB8B0AFFFB8B0
      ADFFB6AEADFFD3CECDFF666666FFBF8456FFC59166FFCDA17EFFC4956EFFB579
      51FFAA6844FFA25C3BFF9B5033FF945745FFC3BFBEFFD9D4D3FFD4CFCEFFD3CE
      CDFFD3CECDFFE8E5E5FF626262FF845733FFBE865AFFB87C54FFA35E37FF4826
      18FF2F170EFF21100AFF110705FF232221FF626262FF727272FF6E6E6EFF6969
      69FF656565FF616161FF4F4F4FFF060302FF7A472AFFA05935FF040101FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7F7F
      7FFFC6C6C6FFC3C3C3FFBFBFBFFFBABABAFFB5B5B5FFAFAFAFFF6E6E6EFF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C0C0CFF888888FFDCDC
      DCFFE6E3E3FFE1DEDCFFDFDCDCFFDFDCDBFFDEDBDBFFEEECECFFA4A4A4FF0000
      00FF000000FF000000FF000000FF000000FF393939FFB6B6B6FFDFDFDFFFEAEA
      EAFFCFCAC9FFCBC5C4FFCAC3C2FFC8C2C0FFC7C0C0FFDCD9D8FF9D9D9DFF0000
      00FF000000FF000000FF000000FF000000FFCBCBCBFFE9E9E9FFE9E9E9FFE2E1
      E1FFCBC5C3FF979696FF959494FF939292FF919090FFDBD7D6FF979797FF0000
      00FF000000FF000000FF000000FF000000FFC5C5C5FFEFEFEFFFE1E1E1FFDDDD
      DDFFC8C2C1FFC8C1C0FFC5C0BEFFC4BEBDFFC2BCBAFFDAD6D5FF909090FF0000
      00FF000000FF000000FF000000FF000000FFBFBFBFFFECECECFFE0E0E0FFDDDC
      DCFFC7C0BFFF919090FF8E8E8EFF8C8C8CFF898989FFD9D5D4FF8A8A8AFF0000
      00FF000000FF000000FF000000FF000000FFBABABAFFECECECFFDFDFDFFFDAD9
      D9FFC5BEBDFFC3BDBBFFC2BBBAFFC0BAB8FFBFB8B7FF3BA46DFF2F9E63FF0206
      02FF000000FF000000FF000000FF000000FFB4B4B4FFECECECFFDEDEDEFFD9D8
      D8FFC2BCBAFFC1BAB9FFC0B9B8FF9FC8A3FF4EA854FF36A065FF58B280FF2697
      55FF000502FF000000FF000000FF000000FFAEAEAEFFEBEBEBFFDDDDDDFFD7D5
      D5FFC0BAB8FF3BA46DFF36A26CFF31A065FF2D9C5FFF53AE7AFF90CBA9FF4DAA
      72FF158D43FF000603FF000000FF000000FFA7A7A7FFEAEAEAFFDDDDDDFFD5D4
      D3FFBFB8B6FF35A269FF95CEAFFF93CDACFF90CBA9FF8FCBA7FF72BB8FFF89C7
      A0FF44A466FF068533FF000802FF000000FFA1A1A1FFF0F0F0FFE0E0E0FFD4D2
      D2FFBDB5B4FF2F9E61FF93CDACFF6DB98DFF69B788FF64B584FF5FB27EFF65B4
      81FF82C197FF3A9F5AFF007C23FF000000FF797979FFB2B2B2FFD4D4D4FFE1DF
      DFFFC4BEBCFF279A59FF8FCAA8FF8CC8A4FF89C5A0FF87C49DFF68B584FF81C1
      96FF46A464FF00711DFF001605FF000000FF000000FF2A2A2AFF6E6E6EFFA2A2
      A2FFC5C4C3FF209650FF1A9048FF148E42FF0F8A3AFF389E5CFF7EC095FF44A2
      60FF006F1BFF001303FF000000FF000000FF000000FF000000FF000000FF2121
      21FF626262FF727272FF6E6E6EFF696969FF656565FF04812BFF41A05DFF006C
      1AFF001103FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF00761EFF02791CFF000F
      02FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF454545FF828282FF979797FF9696
      96FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF454545FF949494FFE4E4E4FFEEEEEEFF9595
      95FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF818181FFE2E2E2FFE7E7E7FFB8B8B8FF9292
      92FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF959595FFE4E4E4FFCFCFCFFF6E6E6EFF0000
      00FF8D8D8DFF8B8B8BFF878787FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF939393FFDDDDDDFFC4C4C4FF6B6B6BFF6B6B
      6BFFABABABFFD7D7D7FF848484FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF2A2A2AFF919191FFD4D4D4FFC8C8C8FFBBBBBBFFB9B9
      B9FFC1C1C1FFC3C3C3FF6F6F6FFF000000FF000000FF000000FF000000FF0000
      00FF82624FFFB1876EFF8F8F8FFFC7C7C7FFCCCCCCFFC7C7C7FFC5C5C5FFC2C2
      C2FFBFBFBFFF7E7E7EFF393939FF000000FF000000FF000000FF000000FF8060
      4EFFE7B89BFFE6B597FFD8A88BFFD2D2D2FFB4B4B4FF878787FF848484FF8282
      82FF6D6D6DFF383838FF000000FF000000FF000000FF000000FF80604CFFE6B6
      9BFFEFCFBBFFEECEB9FFE2AD8BFFD29A79FF838383FF121212FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF805F4CFFE6B698FFEECE
      BAFFE9BFA6FFE8BCA2FFECC8B2FFDFA380FFA66B49FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF805E4AFFE6B397FFEECDB9FFE9BE
      A4FFE5B395FFE7B89CFFEBC5ADFFDE9E77FF8E5735FF000000FF000000FF0000
      00FF000000FF000000FF000000FF805E47FFE6B293FFEECCB7FFE9BDA4FFE5B2
      93FFE6B69AFFEAC3ACFFDE9D76FF8E5635FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFDD9E77FFEDCCB6FFE8BCA2FFE4B091FFE6B5
      99FFEAC2ABFFDE9B72FF8E5433FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFDB966DFFEDC8B2FFE7B79AFFE6B397FFEAC2
      AAFFDE9B71FF8E5430FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFAE734FFFDFA380FFEAC1AAFFEABFA7FFDC98
      6FFF8E532FFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFB27047FFD5824FFFD17B49FF8E51
      2EFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF64C370FF62C16EFF60BE
      6CFF5EBB69FF5BB766FF59B463FF55AE5FFF4C9D55FF397841FF214726FF0712
      08FF000000FF000000FF000000FF000000FF000000FF62C06EFFA5DBAFFFA5DA
      AEFFA2D9ACFFA1D8AAFF9ED7A7FF9BD5A4FF93D09CFF82C48BFF6AB372FF3069
      37FF0E2110FF000000FF000000FF000000FF000000FF60BD6BFFA4DAADFFA1D8
      ABFFA0D8A9FF9DD6A6FF9BD5A4FF98D4A1FF96D29EFF8BCD94FF90CF98FF71B7
      79FF2A6230FF071007FF000000FF000000FF000000FF5DB968FF5AB565FF57B2
      62FF54AD5EFF51A95BFF4EA557FF4BA054FF66B06EFF87C88FFF8CCC94FF8ACB
      91FF5BA462FF183A1AFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF27542BFF398140FF80C287FF7BC3
      84FF6CB273FF25592AFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF224F25FF62AA69FF7DC3
      85FF77BD80FF2B6E30FF000000FF000000FF000000FF000000FF000200FF254E
      29FF000000FF000000FF000000FF000000FF000000FF1F4B23FF5FA765FF79C1
      81FF74BB7AFF286A2CFF000000FF000000FF000000FF000000FF2F6536FF3C81
      44FF000000FF000000FF000000FF000000FF1F4B22FF2E7134FF73BA79FF6EBC
      75FF61AA67FF1C4F20FF000000FF000000FF000000FF2B5D30FF65B06DFF62AC
      69FF419349FF3E8E45FF3A8941FF37843EFF529C58FF72B978FF77C07DFF75BE
      7BFF48904DFF0F2E11FF000000FF000000FF28572DFF64AF6CFF89CA91FF88CA
      8FFF85C88CFF82C589FF7EC486FF7CC283FF79C180FF6BBA72FF74BD7AFF579F
      5BFF1A481CFF030C03FF000000FF000000FF245028FF60AB68FF84C88CFF84C7
      8AFF81C587FF7DC385FF7AC181FF77C07EFF6FB876FF5DA763FF47904CFF1847
      1CFF081608FF000000FF000000FF000000FF000000FF255129FF58A360FF56A0
      5CFF35823CFF327C38FF2F7834FF2C7331FF27662AFF1B4D1EFF0F2D11FF030A
      03FF000000FF000000FF000000FF000000FF000000FF000000FF225227FF2B6A
      31FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000200FF1739
      19FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF757575FF737373FF6F6F
      6FFF6B6B6BFF676767FF000000FF000000FF585858FF525252FF4D4D4DFF4747
      47FF414141FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF6E6E6EFF6A6A6AFF6565
      65FF606060FF5B5B5BFF000000FF000000FF4A4A4AFF444444FF3E3E3EFF3838
      38FF323232FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF636363FF5E5E5EFF5959
      59FF535353FF4E4E4EFF000000FF000000FF3C3C3CFF363636FF303030FF2A2A
      2AFF242424FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF575757FF515151FF4B4B
      4BFF454545FF3F3F3FFF000000FF000000FF2D2D2DFF272727FF222222FF1C1C
      1CFF171717FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF494949FF434343FF3D3D
      3DFF373737FF313131FF000000FF000000FF1F1F1FFF1A1A1AFF151515FF1010
      10FF0B0B0BFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF3B3B3BFF343434FF2E2E
      2EFF282828FF232323FF000000FF000000FF131313FF0E0E0EFF0A0A0AFF0606
      06FF020202FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF010101FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF030303FF3A3A3AFF232323FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF030303FF3A3A3AFF727272FF5B5B5BFF232323FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0303
      03FF3A3A3AFF7D7D7DFFADADADFF9B9B9BFF5B5B5BFF232323FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF030303FF3A3A
      3AFF858585FFBDBDBDFFB4B4B4FFAAAAAAFF979797FF5A5A5AFF232323FF0000
      00FF000000FF000000FF000000FF000000FF000000FF030303FF3A3A3AFF8C8C
      8CFFCECECEFFC4C4C4FFB9B9B9FFAEAEAEFFA3A3A3FF909090FF585858FF2323
      23FF000000FF000000FF000000FF000000FF000000FF2B2B2BFF6C6C6CFFDEDE
      DEFFD2D2D2FFC7C7C7FFBABABAFFB0B0B0FFA4A4A4FF989898FF818181FF4E4E
      4EFF101010FF000000FF000000FF000000FF000000FF030303FF3A3A3AFF8C8C
      8CFFCECECEFFC4C4C4FFB9B9B9FFAEAEAEFFA3A3A3FF909090FF585858FF2323
      23FF000000FF000000FF000000FF000000FF000000FF000000FF030303FF3A3A
      3AFF858585FFBDBDBDFFB4B4B4FFAAAAAAFF979797FF5A5A5AFF232323FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0303
      03FF3A3A3AFF7D7D7DFFADADADFF9B9B9BFF5B5B5BFF232323FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF030303FF3A3A3AFF727272FF5B5B5BFF232323FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF030303FF3A3A3AFF232323FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF010101FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF081832FF114386FF0F498FFF0E4689FF103E76FF09192EFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0716
      2FFF104C94FF11569AFF115698FF105192FF0E4886FF0D3C6FFF0A1624FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0E49
      96FF11569EFF0E4889FF0E4986FF104986FF134A84FF113F73FF0E2F55FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0B3C
      86FF7A96B7FF89B6E4FF6F9BC8FF133E6CFF174270FF204369FF103862FF0102
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1B56
      8FFFD9E8F7FF96C4F1FF8DBAE5FF7DA8D1FF88B4DFFFCDDFEEFF20609DFF0104
      05FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2044
      6FFFA5CAEEFFAACCEAFFA6D0F6FFA7D0F6FFAACCEAFFA6CDEEFF234E7AFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF030000FF4224
      16FF326BA6FF9BCCF8FFAED4F7FFAED4F7FFA4CFF6FF3272ADFF45281DFF0502
      00FF000000FF000000FF000000FF000000FF000000FF050100FF431C07FFBB46
      1AFFF4E2D4FF4C79A8FF4B79A7FF4B79A7FF4C79A8FFF3D6C2FFBD441AFF441B
      07FF060301FF000000FF000000FF000000FF010000FF3F1904FFC34A1DFFF6E4
      D6FFFFE4A3FFFFD470FFFFC967FFFFBF61FFFFB55DFFFFC07EFFF6D7C5FFC447
      1DFF411904FF020100FF000000FF000000FF31190CFF895242FFFCC8AAFFFFD1
      97FFFEC76BFFFEBE66FFFEB862FFFEB05CFFFEA757FFFD9F52FFFFB678FFFEA8
      7EFF874E40FF341B10FF000000FF000000FF2679CBFF76B2EAFFB29D93FFFFB6
      5EFFFFB561FFFEB15FFFFEAB5BFFFEA457FFFD9D51FFFE964CFFFF8C41FFBB8E
      81FF7CB7EDFF2770C3FF000000FF000000FF277BD0FF81B9EEFF9E6456FFF5BA
      83FFFFAB59FFFEA758FFFEA155FFFE9B51FFFFA253FFFF9E4EFFF8AD76FFA35C
      48FF82BBEFFF2875C9FF000000FF000000FF324C64FF2375C9FF835D5DFFBE5E
      33FFFEB85FFFFEB860FFFEB860FFFEB860FFFEB85FFFFEB85FFFB04722FF735E
      67FF2B79C8FF36536BFF000000FF000000FF000000FF04090BFF0A0808FF6A2E
      11FF8E371AFFA2411FFFA74320FFA64120FFA03D1EFF91361CFF81381AFF0B08
      09FF04090BFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFB5DFFEFFA1D2FAFF9BD1F9FF96CD
      F8FF91CAF7FF8BC5F6FF84C1F5FF7CBEF4FF74B9F4FF6CB5F1FF63B1F0FF5BAC
      F0FF000000FF000000FF000000FF000000FFB1DCFDFFFAFEFFFFFAFEFFFFFAFE
      FFFFFAFEFFFFFAFEFFFFFAFDFEFFFAFDFFFFFAFEFFFFFAFEFFFFFAFDFFFF51A7
      EEFF000000FF000000FF000000FF000000FF96CCF6FFF9FDFFFFF0FBFEFFF0FB
      FEFFF0FCFEFFEEFBFDFFEFFBFDFFEFFBFDFFF0FBFDFFF0FBFDFFF7FDFEFF48A2
      EDFF000000FF000000FF000000FF000000FF92C8F5FFE1F7FDFFA9EAF9FFA2E8
      F9FF9CE7F8FF95E5F8FF8FE3F7FF87E1F7FF7EDFF6FF75DDF5FFC8F1FBFF3E9D
      EBFF000000FF000000FF000000FF000000FF8BC4F4FFDDF7FDFFA1E8F8FF9CE7
      F8FF94E5F8FF8EE3F7FF86E1F7FF7DDFF6FF75DDF5FF6BDBF4FFC3F0FBFF3597
      EAFF000000FF000000FF000000FF000000FF77B8F0FFDBF6FCFF9BE7F8FF94E5
      F8FF8EE3F7FF85E1F7FF7CDFF5FF74DDF5FF6BDBF4FF62D9F4FFBFF0FBFF2A93
      E9FF000000FF000000FF000000FF000000FF6FB5EEFF9DD1F4FF76CAF0FF70C7
      F0FF6CC5F0FF5EBDEDFF74DDF5FF6ADBF4FF62D9F4FF38A674FF2F9E63FF218E
      E8FF000000FF000000FF000000FF000000FF5CACEBFF82C2F0FFD3F3FCFFD1F3
      FCFFB1EDFAFF59BBEDFF6ADAF4FF60D9F4FF58D6F3FF32A26CFF58B280FF2697
      55FF000000FF000000FF000000FF000000FF5BABECFF53ACEBFF45AEEBFFABE9
      F9FFACEAFAFF3BA46DFF36A36DFF32A167FF2E9D61FF53AE7AFF90CBA9FF4DAA
      72FF158C42FF000100FF000000FF000000FF5BAAEBFFB3E3F8FF309EE6FF39AA
      E9FFA7E9F8FF35A269FF95CEAFFF93CDACFF90CBA9FF8FCBA7FF72BB8FFF89C7
      A0FF44A466FF068432FF000100FF000000FF53A6EBFFB5E6F9FF94D1F1FF49A6
      E8FF58AEEBFF2F9E61FF93CDACFF6DB98DFF69B788FF64B584FF5FB27EFF65B4
      81FF82C197FF3A9F5AFF007A23FF000000FF4BA2EAFF449DE8FF3C99E7FF3394
      E6FF1C8BE2FF279A59FF8FCAA8FF8CC8A4FF89C5A0FF87C49DFF68B584FF81C1
      96FF46A464FF00681AFF000300FF000000FF000000FF000000FF000000FF0000
      00FF000000FF1F954FFF198F47FF138D41FF0E8939FF389E5CFF7EC095FF44A2
      60FF006519FF000200FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF007826FF41A05DFF0062
      17FF000301FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF00711CFF02791CFF0002
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0F19
      13FF365A42FF5D9A71FF63A978FF60A874FF539464FF2E5337FF0B170EFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF243C2DFF64A5
      79FF93CEA3FFC2E6CBFFCFEBD4FFC9E9CEFFAEDDB7FF6BB87DFF4D945DFF1A34
      20FF000000FF000000FF000000FF000000FF000000FF243C2DFF69AF80FFAEDC
      BAFFDCF2E0FFB5E4BCFF9ADBA4FF95D99FFFA4DFAEFFBFE8C4FF77C189FF4B96
      59FF17321CFF000000FF000000FF000000FF0F1912FF63A478FFA9DAB6FFD8F1
      DCFF91D89CFF87CD92FF83CC8DFF8AD495FF89D494FF82D28DFFAEE0B6FF69B8
      7BFF3F874CFF09140BFF000000FF000000FF365A42FF84C796FFD2EED7FF94D9
      9FFF89D393FF7DC888FFFFFFFFFFFFFFFFFF77CD84FF69C27AFF6DC77CFFABDF
      B4FF439D55FF1F4724FF000000FF000000FF5C9A70FFABDDB5FFA5DFAEFF80CB
      8BFF7AC985FF6CBC77FFFFFFFFFFFFFFFFFF59AB68FF5EBB75FF5AB971FF8AD1
      98FF7EC491FF32793BFF000000FF000000FF63AB78FFB5E2BDFF8AD596FF78C9
      85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57B76EFF67C0
      7CFF9CD4A9FF34853EFF000000FF000000FF60A874FFA8DDB2FF7BCF89FF73CC
      80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57B76EFF65BD
      7BFF9BD4AAFF318239FF000000FF000000FF519363FF89CC97FF88D395FF69C5
      78FF61C06EFF53AA63FFFFFFFFFFFFFFFFFF57B76EFF57B76EFF59B870FF84CC
      96FF79BD8CFF28712FFF000000FF000000FF2C5336FF51AA66FFA9DDB3FF62C0
      77FF5DBD6FFF5EBB75FFFFFFFFFFFFFFFFFF57B76EFF56B46CFF5AB672FFA5DA
      B3FF368E41FF154019FF000000FF000000FF0B160DFF4C905AFF68B87BFFA7DB
      B1FF5EBB75FF5AB971FF57B76EFF57B46DFF56B46DFF59B672FFA4D9B2FF58A9
      6AFF26742DFF051105FF000000FF000000FF000000FF19331EFF489457FF62B3
      76FFA7DBB4FF86CC97FF64BB7BFF62B97AFF85CB97FFA4D9B3FF56A969FF287A
      30FF0C280EFF000000FF000000FF000000FF000000FF000000FF17311BFF3D86
      49FF3F984EFF7BC18EFF95D0A5FF95CFA5FF76BD88FF348C40FF26732DFF0C28
      0EFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0914
      0AFF1C4622FF30773AFF33823BFF2E8038FF28712EFF143F18FF041006FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0E0E
      1FFF33326DFF5759BDFF5D5DD1FF5A5DCFFF4E53BAFF2B2F68FF0B0C1CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF232349FF5E5E
      C9FF8D92EDFFBDC2F8FFCCD3F9FFC3CBF9FFA9B3F4FF646EE2FF4953BDFF191D
      43FF000000FF000000FF000000FF000000FF000000FF232349FF6464D6FFA9AC
      F2FFD8DCFDFFADB9FAFF90A2FAFF8A9CFAFF9BA8FBFFB9C7FCFF6E79E9FF4755
      C3FF171B42FF000000FF000000FF000000FF0D0D1EFF5D5DC9FFA2A6F3FFD4DB
      FDFF8699FAFF7D90F0FF788DF1FF7D93F8FF7C91F9FF748BF8FFA7B5F8FF616C
      E3FF3C4CB2FF090B1AFF000000FF000000FF33326FFF7B82EAFFCDD4FCFF8A9C
      FAFF7C92F7FF7389EEFF6A83F6FF6A83F6FF6A83F6FF6A83F6FF6177F3FFA3AE
      F8FF3C4DD0FF1E285EFF000000FF000000FF5759BEFFA4AEF5FF9CAAFAFF758B
      F0FF525DECFF525DECFF525DECFF525DECFF525DECFF525DECFF6175F2FF808D
      F4FF767DE9FF3046A4FF000000FF000000FF6063D3FFAEB8F9FF7D92FAFF6E84
      F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B57E9FF5C68
      EEFF959CF1FF324AB6FF000000FF000000FF5A5ED2FFA0AAF7FF6E85F8FF6681
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B57E9FF5A64
      EAFF959BF1FF2F4BB4FF000000FF000000FF4D52B8FF808BEEFF7C90F7FF5B71
      F3FF4B57E9FF4B57E9FF4B57E9FF4B57E9FF4B57E9FF4B57E9FF4D59E9FF7982
      F0FF7379E2FF26409FFF000000FF000000FF2A2E69FF4954DBFFA1AAF6FF5462
      F0FF5064EEFF4B57E9FF4B57E9FF4B57E9FF4B57E9FF4A56E6FF5058E6FF9EA2
      F5FF324EC3FF13235AFF000000FF000000FF0B0D1CFF4955BAFF5F69E3FFA0AB
      F5FF525DECFF4E5AEAFF4B57E9FF4C57E6FF4A54E6FF4E54E6FF9DA1F4FF525E
      D6FF2441A4FF050918FF000000FF000000FF000000FF181C43FF4453C2FF5A63
      E0FFA0A5F5FF7C85EFFF5961E9FF575BE7FF7B83EEFF9D9FF4FF4F5BD7FF2845
      AEFF0C173BFF000000FF000000FF000000FF000000FF000000FF161B41FF3A4B
      B1FF3A50CCFF7378E8FF8E91EEFF8E91EEFF6F76E4FF314BC0FF2541A4FF0C17
      3BFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF090A
      1BFF1B275FFF2F46A2FF314BB3FF2C47B2FF26419DFF142459FF040919FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF5D4231FF9A6A4EFF9D6540FF9D5E35FF9D5E
      35FF9D5C35FF9D5C35FF9D5C35FF9D633DFF5E3F2CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF9B6D4EFFDDDDDBFFF3F3F2FFF7F4F3FFF7F4
      F2FFF8F2EDFFF8F2EBFFF7F2EBFFF1EEE8FF9E6744FF000000FF000000FF0000
      00FF000000FF000000FF000000FF9D6540FFF3F2F1FF497C53FF679B72FF679B
      72FF679B72FF8D8966FFA27556FFAC734EFFA66439FF9D5E35FF9D5C35FF9D5C
      35FF9D5C35FF9D633DFF5E3F2CFF9D5E38FFF7F4F3FF689772FF8DCA9CFF8FCD
      9DFF91D19FFFA8805CFFDEDEDCFFF3F3F2FFF7F4F3FFF7F4F2FFF8F2EDFFF8F2
      EBFFF7F2EBFFF1EEE8FF9E6744FF9D5E38FFF7F4F1FF6E9E78FF93D4A1FF93D3
      A2FF93D3A2FFA67149FFF3F2F1FF736CC3FF8F87E0FF8F87E0FF8F87E0FF948B
      E0FF7E79B8FFF7F1EAFFA0653FFF9D5E38FFF7F2EDFF438A49FF87975DFFA37B
      57FFA36F46FFA76438FFAC6C43FFA66441FFA86744FFA96744FFA96E4CFFB696
      9CFF978FE2FFF7EFE8FFA0653FFF9D5E35FFF7F1ECFF458F4AFFA37D57FFDEDE
      DCFFF3F3F2FFF7F4F3FFF7F4F2FFF8F2EDFFF8F2EBFFF7F2EBFFF1EEE8FFAB73
      53FF978FE2FFF6EFE7FF9F653FFF9B5C34FFF7F0ECFF346A38FFA16D44FFF3F2
      F1FF95805AFFBAA57EFFBAA57EFFBAA57EFFBBA782FF8E7E63FFF7F1EAFFA76C
      4EFF5F64D6FFF6EDE6FF9F653FFF9B5C35FFF6F0ECFFFDE8D7FFAC6C43FFF7F4
      F3FFB5A380FFF2DCACFFF5DEAFFFFAE1B1FFFCE3B3FFBDAA87FFF7EFE8FFA86D
      4EFF6066DEFFF6EDE5FF9F653FFF935E3EFFEEECEAFFF7F2F0FFAC6C45FFF7F4
      F1FFBDAA87FFFEE5B4FFFDE4B4FFFDE4B4FFFDE4B4FFBDAA87FFF6EFE7FFA56B
      4CFF5659B4FFF6ECE5FF9F633DFF5B3D2BFF82553BFF9F653FFFA6643AFFF7F2
      EDFFA57D54FFDEA971FFDEA971FFDCA670FFDCA670FFA37B53FFF6EDE6FFAE72
      4CFFFDE8D7FFF7ECE5FF9F633DFF000000FF000000FF000000FF9D5E35FFF7F1
      ECFFAB8156FFE5AC73FFE5AC73FFE5AC73FFE5AC73FFAB8156FFF6EDE5FFAE73
      4DFFF8F2EEFFF1EEEAFF9F6744FF000000FF000000FF000000FF9B5C34FFF7F0
      ECFF806040FFAB8156FFAB8156FFAB8156FFAB8156FF806040FFF6ECE5FFA869
      41FF9F633DFF9F6844FF5F402DFF000000FF000000FF000000FF9B5C35FFF6F0
      ECFFFDE8D7FFFEE8D7FFFEE8D7FFFEE8D7FFFEE8D7FFFDE8D7FFF7ECE5FF9F63
      3DFF000000FF000000FF000000FF000000FF000000FF000000FF935E3EFFEEEC
      EAFFF7F2F0FFF8F3F0FFF8F3EFFFF7F2EEFFF7F2EEFFF8F2EEFFF1EEEAFF9F67
      44FF000000FF000000FF000000FF000000FF000000FF000000FF5B3D2BFF8255
      3BFF9F653FFF9F633DFF9F633DFF9F633DFF9F633DFF9F633DFF9F6844FF5F40
      2DFF000000FF000000FF000000FF000000FF000000FF482E18FF926537FFBA82
      48FFC1864AFFC1874BFFC1874BFFC1884BFFC2874BFFC0864BFFA3713EFF6F42
      20FF040101FF000000FF000000FF000000FF000000FF956536FFE4E0DAFFF5F1
      EBFFF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2ECFFF2E6D7FFE2B1
      7BFFD28D5FFF050201FF000000FF000000FF000000FFB47C43FFF7F3EFFFFAE0
      C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6B7FFFFFBF8FFF6D8
      B3FFE1AF7BFFD38C60FF050201FF000000FF000000FFBE8348FFF9F5F1FFFCE3
      CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6B9FFFDFBF8FFFCE6
      CDFFFAE5C9FFE2B583FF7B4D2AFF000000FF000000FFBF8447FFF8EFE6FFFCE3
      CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC3FFF6D9BBFFF4E9DFFFF7F2
      ECFFFBF7F3FFF5EFE9FFBE7A42FF000000FF000000FFC18445FFE9B06CFFE8AD
      5DFFFCE6D4FFECB563FFECB167FFF9DEC3FFFAE0C8FFF8DCC1FFF5D6BAFFF3D4
      B4FFF1D2B2FFF8F4F0FFBD7D42FF000000FF100903FFDC9546FFEBB570FFE8A6
      5FFFFDE7D6FFECB163FFECBA74FFEAAB65FFF9DAC0FFFADFC7FFF8DCC1FFF6DA
      BCFFF6D8BAFFFAF4EFFFBF7E42FF4D2D0FFFE1A456FFEAB46FFFE8A561FFFADB
      C4FFFEE8D8FFFBDDC4FFE9AA5FFFEAB46FFFE8A65AFFEFB992FFFAE0C7FFF9DD
      C2FFF8DCC1FFFAF4EDFFBF7D41FFDA9D50FFECB777FFE5A356FFF2D8C3FFFEE8
      D6FFFEE8D7FFFDE7D6FFF6D1B2FFE6A558FFE9B173FFE49C56FFFAE0C8FFFADF
      C7FFFADFC5FFFAF2EAFFBF7A3EFF4A260DFFDD9951FFE8A968FFE39A5BFFF9D8
      C2FFFDE7D6FFF9DBC2FFE59F5BFFE8A968FFE39A54FFEEB593FFFCE2CDFFFBE1
      CBFFFBE1C9FFFBF7F2FFBE763BFF000000FF0F0601FFD57D3CFFE5A263FFE190
      56FFFDE5D3FFE59C5AFFE7A766FFE3965DFFF9DAC3FFFCE2CEFFFCE2CCFFFBE0
      C9FFFBE1C8FFFDFAF7FFBA7037FF000000FF000000FFBE743AFFE0915EFFE08B
      4AFFF7B354FFE2954DFFE2883FFFF6AC4EFFF7B250FFF7B250FFF7B14FFFF7B1
      4DFFF7B14DFFFCF9F5FFB86A33FF000000FF000000FFBA7238FFF7EDE3FFFDC1
      6CFFFFD89FFFFFD79DFFFFD69AFFFFD797FFFFD695FFFFD694FFFFD593FFFFD4
      92FFFBBD63FFFBF7F4FFB4622DFF000000FF000000FFB66B34FFF4EADEFFFDBE
      66FFFCBC65FFFBBD63FFFCBD62FFFCBD62FFFCBC60FFFBBC61FFFBBB5FFFFCBD
      5EFFFCBB60FFFBF9F6FFAF5D29FF000000FF000000FFA35B2CFFEBE4DEFFF5EA
      DDFFF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3EBFFFAF2EAFFFCF7
      F3FFFAF6F2FFEFEFEEFF984F22FF000000FF000000FF4E2B14FF874922FFAD5D
      2CFFB3612DFFB3612DFFB3612DFFB3602DFFB3602CFFB2602BFFB2602BFFB25F
      2BFFAC5C2AFF87471FFF472511FF000000FF482E18FF926537FFBA8248FFC186
      4AFFC1874BFFC1874BFFC1884BFFC2874BFFC0864BFFA3713EFF6F4220FF0401
      01FF000000FF000000FF000000FF000000FF956536FFE4E0DAFFF5F1EBFFF8F4
      EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2ECFFF2E6D7FFE2B17BFFD28D
      5FFF050201FF000000FF000000FF000000FFB47C43FFF7F3EFFFFAE0C7FFFBE1
      C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6B7FFFFFBF8FFF6D8B3FFE1AF
      7BFFD38C60FF050201FF000000FF000000FFBE8348FFF9F5F1FFFCE3CDFFFBE3
      CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6B9FFFDFBF8FFFCE6CDFFFAE5
      C9FFE2B583FF7B4D2AFF000000FF387A4BFF538A54FF519564FF529461FFA0B8
      94FF8CAD82FF2C7D40FF2C7D3FFF388346FF348143FF8FB38FFFF7F2ECFFFBF7
      F3FFF5EFE9FFBE7A42FF000000FF2D5E3AFFB4D3BDFF9BDAB4FF72C894FF5294
      61FF48925DFF5BA372FF57A06CFF4E9662FF609660FFE9D1B3FFF3D4B4FFF1D2
      B2FFF8F4F0FFBD7D42FF000000FF010401FF6C8850FFBFD9C8FF81D3A2FF6BC0
      89FF529461FF49955EFF4F9662FF659966FFF4DCC2FFF8DCC1FFF6DABCFFF6D8
      BAFFFAF4EFFFBF7E42FF000000FF000000FFBB8345FF5F9D6FFFC4DCCCFF74C9
      96FF71BB86FF418C56FF53925EFFF5E0CCFFFBE1CCFFFAE0C7FFF9DDC2FFF8DC
      C1FFFAF4EDFFBF7D41FF000000FF000000FF7B7A3CFF1D7635FF46905BFFC7DD
      CDFF68BF83FF6FB581FF428D57FFB0C0A0FFFBE4D0FFFBE3CCFFFADFC7FFFADF
      C5FFFAF2EAFFBF7A3EFF000000FF092D13FF197331FF599F6CFF47955AFF458F
      59FFC7DDCDFF5BB56FFF65AD73FF428C56FF197331FFFCE2CDFFFBE1CBFFFBE1
      C9FFFBF7F2FFBE763BFF000000FF16672CFF187331FF177331FF177231FF4289
      50FF5F9A69FFBAD6C2FF76BA83FF5FAA68FF559562FFFCE2CCFFFBE0C9FFFBE1
      C8FFFDFAF7FFBA7037FF000000FF000000FFBD763CFFF7F0E6FFFCE4D1FFFCE4
      D1FFE5D9C1FF669D6EFF559563FF579664FF6A9F71FFFCE4D1FFFCE4D1FFFCE4
      D1FFFCF9F5FFB86A33FF000000FF000000FFBA7238FFF7EDE3FFFCE4D1FFFCE4
      D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4
      D1FFFBF7F4FFB4622DFF000000FF000000FFB66B34FFF4EADEFFFCE4D1FFFCE4
      D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4
      D1FFFBF9F6FFAF5D29FF000000FF000000FFA35B2CFFEBE4DEFFF5EADDFFF6EB
      DEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3EBFFFAF2EAFFFCF7F3FFFAF6
      F2FFEFEFEEFF984F22FF000000FF000000FF4E2B14FF874922FFAD5D2CFFB361
      2DFFB3612DFFB3612DFFB3602DFFB3602CFFB2602BFFB2602BFFB25F2BFFAC5C
      2AFF87471FFF472511FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE9E9E9FFF9F9F9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF8F8F8FF545454FF0000
      00FF000000FF000000FF000000FF000000FF000000FFF9F9F9FFF4F4F4FFF5F5
      F5FFF5F5F5FFF5F5F5FFF1F1F1FFEFEFEFFFE9E9E9FFFCFCFCFFE7E7E7FF5454
      54FF000000FF000000FF000000FF000000FF000000FFFCFCFCFFF7F7F7FFF9F9
      F9FFF7F7F7FFF7F7F7FFF3F3F3FFF0F0F0FFEAEAEAFFFCFCFCFFF6F6F6FFF4F4
      F4FF565656FF000000FF000000FF000000FF000000FFFCFCFCFFF9F9F9FFACAC
      ACFFB4B4B4FFF7F7F7FFA4A4A4FFB2B2B2FFEBEBEBFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFBFBFBFFFCFC
      FCFFFCFCFCFFFBFBFBFFF8F8F8FFF5F5F5FFF1F1F1FFECECECFFEAEAEAFFE6E6
      E6FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFF8F8F8FFF5F5F5FFF2F2F2FFEFEFEFFFEDED
      EDFFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFA4A4
      A4FFB5B5B5FFFCFCFCFFA4A4A4FFB5B5B5FFF8F8F8FFC1C1C1FFF0F0F0FFF2F2
      F2FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFAFAFAFFF9F9F9FFF6F6F6FFF6F6
      F6FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFF5EBB6AFF5AB565FF55AF
      5FFF50A75AFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFA4A4
      A4FFB5B5B5FFFBFBFBFFA4A4A4FFB5B5B5FFFAFAFAFF59B363FF9CD6A5FF98D3
      A1FF499D51FF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFF52AA5CFF95D29EFF90CF
      98FF519E59FF0D1D0EFF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFF82C389FF55AA5FFF68B371FF8FCE96FF89CB
      90FF68AF6EFF327A39FF215626FF000000FF000000FFFBFBFBFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF8FAF8FF62AA69FF61AB69FF87C98FFF81C5
      89FF509956FF25632AFF010301FF000000FF000000FFEFEFEFFFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF5D9E63FF539D5AFF4E97
      54FF4F8A54FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF255E28FF1F55
      23FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF2992B1FF5ABDDCFF5CBEDDFF5CBEDDFF5CBE
      DDFF5BBEDDFF329DBDFF030F12FF020A0DFF020A0DFF020A0DFF020A0DFF020A
      0DFF010303FF000000FF000000FF33ADD4FFFDFEFEFFFEFFFFFFFEFEFFFFFDFE
      FFFFFEFFFFFFEAF7FBFF68C2DEFF66C1DCFF66C1DCFF66C1DCFF73C6DEFF64B2
      CAFF103B48FF000000FF000000FF30A4CDFFF7FCFEFF8DE4F8FF90DEF5FF9EE0
      F5FFABE1F6FFEFFBFEFFF4FDFEFFF3FCFEFFF1FCFEFFEFFBFEFFEEFBFEFFF4F7
      F9FF2B90B5FF000000FF000000FF32A0CFFFF1FAFDFF93DEF5FF92DCF4FF80D5
      F2FF68CAEDFF6ACBEAFF84D3EFFF7ED2EFFF78D0EFFF74CFEEFF70CFEEFFE9F7
      FBFF30A5CFFF000000FF000000FF32A6D5FFE8F6FBFF93D4EFFF87CEEEFF71C0
      E9FFC9E9F6FFF2FCFEFFF3FCFEFFF2FCFEFFF0FCFEFFEFFBFEFFEEFBFEFFFEFF
      FFFF33A4D3FF000000FF000000FF34A2D5FFFEFFFFFFF8FDFFFFF6FDFFFFF5FC
      FFFFF3FCFEFFD8F6FCFF94E6F8FFA8D4D4FFC8C5B2FFE0BC9DFFE5C3A6FFE2CF
      B9FF43A1CEFF000000FF000000FF339CD5FFF6FCFEFFC8F2FCFFB8EFFBFFABEC
      FAFF9BE8F9FF8AE3F7FFA2D2D3FFE9CDB3FFF5E7DBFFF8ECDFFFF2DDC9FFEBD0
      B7FFA4B0AFFF000000FF000000FF3395D4FFF2FAFDFFB2EDFAFFA3E9F9FF94E6
      F8FF84E2F7FF74DEF6FFE6C5A9FFF3E4D6FFF6E0CAFFF5DEC5FFF5DEC4FFF8E6
      D3FFE0C1A7FF000000FF000000FF328ED3FFEFFAFEFFA0E9F9FF90E5F8FF80E1
      F7FF70DEF6FF61DAF5FFE0BC9DFFF8EADCFFF4DDC5FFF4DCC3FFF3D8BCFFF8E2
      CDFFE4C0A3FF000000FF000000FF2C7FC3FFCFE1EBFFA5DBF2FF9DDBF4FF95DA
      F3FF8DD8F3FF85D7F3FFE5C3A7FFF5E5D6FFF4DAC0FFF3D8BCFFF3D8BCFFF8E3
      CCFFD9B599FF000000FF000000FF123A5EFF1D588DFF287BC6FF2A83D1FF2A83
      D1FF2A83D1FF2A83D1FFA5ACB2FFF2DCC9FFF8E3CEFFF7E0C7FFF8E2CBFFF3D1
      B2FFB0A197FF182E44FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF1D1713FF705C4CFFE6C5AAFFE6C4A8FFDDB799FFB4A1
      95FF9BB7D3FF578CBEFF0E2439FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1C31
      46FF5A8EBCFF91B8DEFF447DAEFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0D2338FF4F86B4FF4E89B9FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0C0C0CFF1C1C1CFF242424FF313131FF464646FF505050FF5B5B5DFF6868
      67FF7F7F7DFF8D857CFF574938FF000000FF000000FF000000FF000000FF0909
      09FF8C8C8CFFB8B8B8FFB3B3B3FFC8C8C8FFFFFFFFFFFFFFFFFFF9F4ECFFDDD0
      BEFFE4D2BEFFFFFFF4FF8A7C69FF000000FF000000FF000000FF000000FF1111
      11FFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFAFFD6C5B0FFEBD9
      C1FFFEF4E2FFFFFFF2FF8A7A65FF000000FF000000FF000000FF000000FF1212
      12FFE3E3E3FFFFFFFFFFFEFEFEFFFEFEFEFFFBFBFCFFE8E8E9FFD5C7B7FFFFF4
      DDFFFFF4E1FFFFFAE8FF897761FF000000FF000000FF000000FF000000FF1313
      13FFE3E3E3FFFFFFFFFFFEFEFEFFFFFFFFFFF8F8F8FFE2E2E3FFCEC1B1FFFFF1
      D9FFFFEFD7FFFFF5DFFF89765EFF000000FF000000FF000000FF000000FF1212
      12FFE2E2E2FFFFFFFFFFFDFDFDFFFFFFFFFFF8F8F8FFE3E3E4FFCEC1B0FFFFED
      D3FFFCEAD0FFFFF0D7FF88765DFF000000FF000000FF000000FF000000FF1010
      10FFE1E1E1FFFFFFFFFFFDFDFDFFFEFEFEFFF7F7F7FFE2E2E3FFCDBDACFFFEE8
      CBFFF6E3C7FFFDEACFFF877157FF000000FF000000FF000000FF000000FF0E0E
      0EFFDFDFDFFFFFFFFFFFFCFCFCFFFDFDFDFFF6F6F6FFE1E2E2FFCCBCABFFF6DE
      C0FFF2DCBFFFF9E2C2FF846A4DFF000000FF000000FF000000FF000000FF1212
      12FFDDDDDDFFFFFFFFFFFBFBFBFFFDFDFDFFF6F6F6FFE0E0E1FFC6B7A3FFF3D9
      B9FFEFD6B8FFF3D3AAFF836747FF000000FF000000FF000000FF020202FF5858
      59FFF8F8F8FFFCFCFCFFFBFBFBFFFCFCFCFFF2F2F3FFDCDEDFFFC2B8A8FFE6CC
      AFFFEBCAA2FFEDC695FF816646FF010101FF020202FF000000FF040404FFA3A3
      A5FFFFFFFFFFF8F8F8FFF6F6F6FFF5F5F5FFF1F1F1FFE3E4E6FFBDBBB9FFD2B7
      97FFE3B687FFE8BF8FFF7F6343FF020203FF080808FF060607FF080809FF9D9D
      9EFFFEFEFEFFF2F2F2FFF1F1F1FFF1F1F1FFF2F2F2FFE6E7E9FFC4C1BCFFC6A5
      82FFDCAE7DFFE6BE92FF806447FF000000FF050505FF0B0B0CFF0C0C0DFFA2A2
      A2FFFDFDFDFFF1F1F1FFF4F4F4FFF4F4F4FFF4F4F3FFEFF1F2FFDBD9D5FFC49E
      7AFFD4A06EFFDEAA70FF71522FFF000000FF000000FF09090AFF131313FFB8B8
      B9FFFFFFFFFFF5F5F5FFE7E7E8FFE1E1E1FFC0C0C0FF8C8E90FF605D58FF976D
      48FFB96A28FF724619FF241507FF000000FF000000FF010101FF070708FF6363
      64FFB8B8B9FFBABABBFF7D7D7DFF565656FF393939FF080808FF0E0D0DFF7749
      22FF603915FF0E0905FF000000FF000000FF000000FF000000FF000000FF0808
      08FF121214FF1D1D1DFF050505FF000000FF000000FF000000FF100D07FF3A25
      0EFF0C0904FF000000FF000000FF000000FF000000FF000000FF0A0708FF2E28
      28FF766D6FFF8C8385FF958C8EFF988F91FF918788FF8E8486FF6B6466FF312B
      2BFF0D0A0BFF030202FF000000FF000000FF171515FF595253FF898081FFF7EF
      EEFFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4
      E3FF9A9193FF6A6262FF2A2626FF000000FF4A4444FFCCC0C1FFF7EFEEFFA196
      95FF8A7D7CFF998C8BFFA69F9FFF9E9695FF796867FF847677FF8C8686FF9288
      87FFEFE4E3FFD8D0D0FF73696CFF000000FF272122FFB5A7A5FFF7EFEEFFD5D1
      D2FFAAA4A4FFA7A3A3FFADAAAAFFA8A6A6FF97908FFF9F9C9CFFADAAAAFFD9CF
      CFFFD9CFCFFF918588FF473D40FF060404FF3A3435FF877876FFECE1E0FFFFFF
      FFFFFEFEFEFFEAE4E4FFDBD4D3FFECE5E5FFFCF9F9FFF5F0EFFFD9CFCFFFD9CF
      CFFF79696BFF49393BFF140F10FF352F2EFF706969FF706564FFA99898FFF8EE
      EEFFFEFEFEFFCDC9C8FFAEA19FFFCABFBDFFFCF8F7FFF5F0EFFFD9CFCFFF8E7A
      7AFF5D4C4DFF1E1717FF000000FF362E2CFF060505FF050505FF392F2FFFD4C4
      C4FFFFFCFCFFDBD6D4FFA39896FFB9ACACFFEFE4E3FFD5C6C4FFB2A19FFF7B69
      69FF3B2F31FF010101FF000000FF4D4242FF686462FF54504FFF4E4141FF8070
      70FFFBF1F1FFF4EBE9FFA39897FFB4A8A7FFE9DDDCFFDACBC9FFAB9A99FF6555
      56FF0D0A0AFF000000FF000000FF131111FF787271FF7F7675FF24201FFF1511
      11FFCBBEBFFFFFFDFCFFC1B7B6FFAAA09FFFE5D9D8FFDBCDCCFF867575FF231D
      1DFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF484041FFEEE3E3FFE8DDDDFFA39999FFDCD1CFFFBAABAAFF403536FF0101
      01FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF030303FF7F7374FFEADCDDFFB3A8A8FFA99D9DFF695C5CFF050404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF191515FFAB9D9DFFD6C9C8FF857575FF1A1616FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF625857FFD2C5C3FF554746FF020202FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF6A6060FFD6CAC8FF5B4B49FF040303FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF756C6CFFE3D9D6FF6F605DFF060404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4C4745FFB8AFACFF4E4543FF020202FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF302413FFAE8548FFEABB
      80FFE8B675FFE6B16BFFE4AF66FFD4A158FFC99853FFB68B4CFFB4894AFFA57C
      44FF94713DFF41321BFF040301FF000000FF000000FF5E4726FFEABF8BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9F4FFFBF3EAFFF8EBD9FFF8E6D3FFF5DF
      C5FFE9CBA5FFCE9B56FF513D21FF000000FF000000FF70542EFFEBC599FFFFFF
      FFFFFCEFE2FFFDF0E7FFFDF1EBFFFDF5EEFFFDF8F1FFFDFAF7FFFFFCFAFFFFFF
      FFFFFEFBF7FFF4DABFFFC89552FF000000FF000000FF7A5A31FFEBCAA4FFFFFD
      FBFFFDE9D5FFFDEBD8FFFDEADBFFFDEDDFFFFDF0E2FFFDF1E4FFFCF0E4FFFFFF
      FFFFE09F6EFFFFFBF9FFDFB786FF000000FF000000FF856235FFEDD0B1FFFFF6
      F0FFFAE1CAFFFBE3CCFFFBE3D0FFFBE6D3FFFBE9D5FFFCE9D8FFFCEADBFFFFFF
      FDFFD29C6FFFEED9C0FFBA894BFF000000FF000000FF946C3AFFF0D9C0FFFBED
      E1FFF9DABFFFF9DCC1FFF9DEC4FFFAE0C7FFFAE2CAFFFAE2CDFFFAE5D0FFFFFE
      FDFFCB8E58FFBF8B4CFF362815FF000000FF000000FFA67941FFF5E7D8FFFAE5
      D2FFF9DABBFFD4966CFFD49D79FFD0976FFFD6A381FFCD8D66FFCD8F67FFD099
      73FFD19871FFC88A60FF241206FF000000FF000000FFB78447FFFCF6F0FFF9DF
      C7FFF9DCBCFFCC8C63FFF3CDAFFFFFFFFFFFE3C7B2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEABEA0FFC9885EFF000000FF060502FFB88449FFFEFBF7FFF9DC
      C0FFF8DCBEFFC78559FFEFBF9DFFFFFFFFFFCC926CFFFFFFFFFFFFFFFFFFFFFB
      F7FFFFF8F1FFE4AE8BFFC7895FFF000000FF150D07FFB88550FFFEFCF9FFF9DC
      BEFFF8DBBEFFC8875BFFEFBEA0FFFDFCFAFFFEFCFBFFFEFDFDFFFEFDFCFFFDFB
      FAFFFDFCFBFFDDA784FFC07D51FF000000FF1B110AFFB68554FFFEFEFDFFFADE
      C1FFFADCBEFFCA8C63FFEAB798FFDDA47CFFDDA57EFFDBA27AFFD99F78FFD99F
      77FFD89E76FFD89D76FFBE835BFF0D0805FF6D4928FFD5AD8BFFFDF0E5FFF7C7
      A1FFF7CFACFFC98A5FFFE6B491FFE2A680FFE1A680FFDEA27BFFDCA079FFDB9E
      77FFD99D75FFD49971FFBA7C55FF362313FF976335FFB38457FFD9A479FFD89D
      6DFFD79A68FFC38052FFEAB596FFF3F3EAFFEDF1E6FFEFF1E6FFEFF0E6FFEDF1
      E5FFF3F5EDFFD59B77FFAF6E42FF52341BFFC7A384FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC27D4FFFEFB599FFEAF3E8FF4FBE83FF6DC997FF6FC998FF52BE
      83FFE4F4E9FFDD9B79FFA96738FF3C2513FFB78F6BFFD6B9A2FFDFC5B2FFE7D4
      C2FFEEDFD3FFC58253FFEFCEB9FFDDFFFFFF86EEC7FFA1F4D7FFA1F6D7FF8BEE
      C7FFE0FFFFFFDDA184FFAA683CFF0B0603FF4A2E18FF5B391EFF663F22FF7146
      25FF7A4C28FFAC6130FFC28356FFD38A66FFE18E6EFFDC8C6AFFDA8A6BFFD789
      6CFFCD8A6AFFAA6B42FFA55D2CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2B5C
      30FF234E27FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF2B5B2FFF61B2
      6BFF5DAE67FF1D4422FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF2B5A2FFF60B16AFF81D1
      8EFF78C884FF55A55EFF1A3F1DFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF295A2FFF5EAF68FF80CF8CFF7DCF
      8AFF56A65FFF37843EFF020402FF000000FF000000FF18301CFF234827FF0000
      00FF000000FF000000FF000000FF29592FFF5DAE67FF7DCE89FF7CCE88FF55A5
      5EFF357F3BFF020402FF000000FF000000FF162C18FF51A35AFF6BBF77FF244A
      28FF000000FF000000FF29592DFF5CAD66FF7BCD88FF7ACD86FF54A45DFF347E
      3AFF020402FF000000FF000000FF19331CFF4FA159FF77C985FF7ECE8CFF4EA3
      57FF204624FF27542BFF5AAC65FF7ACC85FF77CB84FF52A35BFF337E39FF0204
      02FF000000FF000000FF000000FF020603FF57AF61FF69BC74FF83D28FFF78C9
      84FF5EB168FF61B36BFF76C982FF76CB81FF51A25AFF327C38FF020402FF0000
      00FF000000FF000000FF000000FF000000FF030703FF4FA558FF61B46BFF7CCE
      88FF79CC86FF74CA80FF74C980FF50A158FF327C38FF010402FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF030603FF47994FFF59AB
      62FF75CA81FF72C87CFF4F9F57FF317B37FF010402FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF030603FF3E8D
      45FF52A25AFF4D9E55FF307A36FF010402FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0105
      01FF35823BFF2F7734FF000200FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF010501FF000200FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF030202FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF484848FF5F5F5FFF757575FF808080FF7B7B
      7BFF767676FF5B5B5BFF525252FF767676FF737373FF737373FF6A6A6AFF6262
      62FF545454FF5F5F5FFF242424FF505050FFFFFFFFFFFFFFFFFFFCFCF9FFF6F5
      F5FFF9F9F8FFEDECEBFFEDECEBFFF9F9F8FFF6F5F5FFF6F5F5FFFCFCF9FFFFFF
      FFFF8A8A8BFFE1E1E0FF3A3A3AFF505050FFFFFFFEFFE1E1E0FFE1E1E0FFE1E1
      E0FFF1F1F0FF8A8A8BFF8A8A8BFFF1F1F0FFE1E1E0FFE1E1E0FFE1E1E0FFFFFF
      FFFF8A8A8BFFE1E1E0FF373737FF505050FFFFFFFFFFFFFFFFFFF8F9F9FFF6F5
      F5FFF0F0EFFFE3E2E1FFE3E2E1FFF0F0EFFFF6F5F5FFF6F5F5FFF8F9F9FFFFFF
      FFFF8A8A8BFFE1E1E0FF383838FF505050FFFFFFFEFFE1E1E0FFE1E1E0FFE1E1
      E0FFF0F0EFFF8A8A8AFF8A8A8AFFF0F0EFFFE1E1E0FFE1E1E0FFE1E1E0FFFFFF
      FFFF8A8A8BFFE1E1E0FF3B3B3BFF505050FFF6FDFFFFFFFFFFFFF9F8F9FFF6F5
      F5FFF0F0EFFFE3E3E2FFE3E3E2FFF0F0EFFFF6F5F5FFF6F5F5FFF9F8F9FFFFFF
      FFFF8A8A8BFFE1E1E0FF3C3C3CFF505050FFFFFFFFFFE1E1E0FFE1E1E0FFE1E1
      E0FFF0F0EFFF8A8A8BFF8A8A8BFFF0F0EFFFE1E1E0FFE1E1E0FFE1E1E0FFFFFF
      FFFF8A8A8BFFE1E1E0FF383838FF505050FFFFFFFFFFFFFFFFFFFAFAF8FFF6F5
      F5FFF0F0EFFFE3E3E2FFE3E3E2FFF0F0EFFFF6F5F5FFF6F5F5FFFAFAF8FFFFFF
      FFFF8A8A8BFFE1E1E0FF3B3B3BFF505050FFFFFFFFFFFFFFFFFFFCFCFAFFF4F4
      F3FFF2F2F1FFB0AFAFFFB0AFAFFFF2F2F1FFF4F4F3FFF4F4F3FFFCFCFAFFFFFF
      FFFF8A8A8BFFE1E1E0FF3C3C3CFF2B2B2BFF424242FF515151FF5C5C5CFF6464
      64FF444444FF282828FF404040FF646464FF606060FF606060FF545454FF4545
      45FF2B2B2BFF2F2F2FFF2D2D2DFF040404FF0F0F0FFF191919FF242424FF2D2D
      2DFF353535FF343433FF323232FF2A2A2AFF20201FFF303030FF0B0B0BFF0000
      00FF040404FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF0C0C0CFF131313FF181818FF1B1B
      1BFF171717FF111111FF0A0A0AFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF7A4F2DFF945E
      34FF120800FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF773905FFE7B8
      87FFA85B19FF321701FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF773905FFF3B2
      36FFFBBA2DFFBE6D19FF642E04FF020100FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF783A06FFF3AC
      28FFFFBF1BFFFFBF26FFE39527FF8A450AFF140A00FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF7A3D06FFF3AC
      2AFFFFBA1DFFFEB81CFFFFBE21FFEFA62AFFAC5E13FF391D02FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF7B3E06FFEDA4
      29FFF6AC1AFFF5AB1BFFF5AB1AFFF8B01BFFF2AA26FFC37219FF6B3606FF0200
      00FF000000FF000000FF000000FF000000FF000000FF000000FF7C4107FFE79C
      27FFED9F17FFEC9E18FFEC9E18FFEC9E18FFEE9F16FFEEA220FFDE8C22FF924E
      07FF190D01FF000000FF000000FF000000FF000000FF000000FF7E4307FFE191
      25FFE28E13FFE28E15FFE28F15FFE28F15FFE28F15FFE38E12FFE5941AFFE3A4
      49FFBB6725FF3C1D03FF000000FF000000FF000000FF000000FF7F4607FFD37B
      20FFCD6D0CFFCF710EFFD0730FFFD1750FFFD3760EFFD57E19FFDB983DFFE1A6
      53FFC87227FF351C03FF000000FF000000FF000000FF000000FF814709FFD47E
      22FFCE6E0CFFD0720FFFD1740EFFD3760FFFD68622FFDD9E49FFDE983BFF9151
      09FF120900FF000000FF000000FF000000FF000000FF000000FF834809FFD885
      23FFD3760EFFD57A10FFD77E13FFDB9230FFE1A54DFFC67E22FF683A05FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF844B09FFDC8A
      23FFD77C0EFFDB8619FFE09D3EFFE4A547FFB36D14FF412303FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF854C09FFDF8E
      20FFDE8E20FFE4A648FFE6A23AFF8C5008FF241201FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF864E09FFE9B1
      58FFE8AE53FFB97419FF693B05FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF874C07FFD781
      4BFFAC6B1CFF322103FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF834309FFA954
      16FF100A00FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF1F1F1FFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF717171FF171717FF696969FFACACACFFACACACFFACACACFFACAC
      ACFFACACACFFACACACFFACACACFFACACACFFACACACFFACACACFFACACACFFACAC
      ACFFACACACFFACACACFF4D4D4DFF848484FFACACACFFFEFFFEFFFAFBFAFFFBFC
      FCFFFAF9FAFFFAFAF9FFFAF9FAFFFAF9FAFFFAFAFAFFF9FAFAFFF9FAFAFFFAFA
      FAFFFFFFFFFFACACACFF545454FF7F7F7FFFACACACFFFFFFFFFFA0A0A1FF5050
      50FFF5F6F6FFFCFCFCFFFAF9F9FFF9F9FAFFFAF9F9FFFAF9F9FFF9F9F9FFF9F9
      F9FFFFFFFFFFACACACFF535353FF7F7F7FFFACACACFFFFFFFFFF979697FF3939
      39FFF8F8F8FFFFFFFFFFFDFDFCFFFDFDFDFFFDFCFCFFFDFCFCFFFDFDFDFFFCFD
      FCFFFFFFFFFFACACACFF535353FF7F7F7FFFACACACFFFFFFFFFF9A9A9AFF3D3D
      3DFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFACACACFF535353FF7F7F7FFFACACACFFFFFFFFFF9A9A9AFF3D3D
      3DFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFACACACFF535353FF7F7F7FFFACACACFFFFFFFFFF989898FF3939
      39FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFACACACFF535353FF7F7F7FFFACACACFFFFFFFFFFA4A4A4FF5151
      51FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFACACACFF535353FF838383FFACACACFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFACACACFF535353FF696969FFAEAEAEFFACACACFFAEAEAEFFAEAE
      AEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAE
      AEFFACACACFFA5A5A5FF4D4D4DFF1D1D1DFF4A4A4AFF454545FF464646FF4646
      46FF464646FF464646FF464646FF464646FF464646FF464646FF464646FF4646
      46FF454545FF4B4B4BFF151515FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF5C3C1BFFE69445FFE6994CFF1E13
      09FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE28F3FFFC37A36FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF2D1C0CFFE5934AFFA56428FF9558
      23FFA45F23FF4A290EFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF693F1AFFE59A57FFA45F23FF7742
      17FFE3914EFFDD7D30FF1D0F05FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFA45F23FFDF7C2CFF000000FF0000
      00FFAF5B1BFFDE8238FF3A1C06FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0F0702FFDE7C2DFF924F19FF000000FF0F07
      01FF8FA250FF819D4DFF000200FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF49260CFFE08640FF743C0FFF000000FF6F90
      4AFF87CB8FFF82C58AFF346C3BFF000200FF4E813FFF69441EFFA5692EFFA566
      2BFF975C25FF5A3615FF000000FF824311FFBC5D17FFBB5C17FFD86718FF888D
      43FF7EC487FFAFDCB5FF73B77AFF8A8D43FFE49548FFE8A25FFFE28A3AFFE69D
      5AFFE9A86DFFE49854FF593413FF000000FF000000FF000000FF000000FF0000
      00FF2A5A2FFF6FB578FFB5C48FFFE69A53FFE8A363FF79491DFF000000FF7746
      1CFFE69E5FFFE59756FF673813FF000000FF000000FF000000FF000000FF0000
      00FF000000FF3D8D46FFBBB170FFE89F5CFFBB8035FF0F0902FF000000FF854A
      1AFFE69D5FFFE1914CFF582F0DFF000000FF000000FF000000FF000000FF0000
      00FF388140FF37843DFF2F7835FF7D7830FF92762CFFA45F21FFDF7C2AFFE391
      4EFFEBB285FFDC7526FF0F0701FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0F0903FFA46025FFE59754FFE59451FFB06220FF924F19FFE69C
      61FFE8A36BFFAE5817FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFB26726FFE69857FFE49653FF663812FF000000FF66350EFFE18B
      4AFFE18A47FF64310CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF3A220DFFE28C42FFECB487FFDC782AFF0F0701FF1D0F03FFBC5F19FFE6A3
      6FFFDC7832FF3A1A06FF000000FF000000FF000000FF000000FF000000FF0000
      00FF58310FFFE18E4AFFEBB082FFE3904CFFDA7121FFDA7226FFE08746FFE7A1
      6EFFE3925AFFDB7331FF391A06FF000000FF000000FF000000FF000000FF0000
      00FF0F0701FF824413FFD96E1DFFD96C1AFFAC5614FF64300CFF642F0CFFC75C
      17FFC75B17FF7F390DFF0E0501FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF775237FFD7915FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF765034FFE09560FFDD8F57FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF7B5234FFE5A578FFEABC99FFD98648FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF875936FFE3A373FFE9BA98FFE8B894FFD47A38FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF8C5A34FFE09F6FFFE9BA98FFE5AE85FFE6B18CFFCF7028FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFC079
      45FFE09C69FFE8B794FFE3AA80FFDFA070FFE3AC82FFC96319FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9658
      2CFFDC945DFFE5B28AFFE0A375FFDC9965FFE1A578FFC55A17FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0302
      01FF8A491AFFD68446FFE1A87AFFDB9764FFDEA06FFFBF5015FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF813C0FFFD0753BFFDD9E6CFFDC9A67FFBC4513FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF762D0CFFC96935FFDA9460FFB83E12FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF70230BFFC35D2FFFB63712FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF691D09FFB33111FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFDEA2
      7AFF7A5941FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFEAAA
      7EFFE7A77AFF78553CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE6A6
      77FFEFC8ACFFE8AF86FF7B5234FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE29F
      6CFFEEC7A7FFEDC1A2FFE3A373FF85512AFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE196
      60FFECC0A0FFE8B691FFE9BA98FFDD965FFF83491CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFDB8D
      51FFEABA98FFE3A97EFFE3AA80FFE4B089FFD68749FFAE5516FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFD683
      41FFE7B48FFFE0A272FFE0A375FFE2AA80FFD37D41FF8A3D10FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFD275
      33FFE4AE86FFDFA070FFE1A87AFFD0783DFF813710FF030100FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFCD6C
      21FFE1A77CFFE0A577FFD0753BFF7D330FFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFC960
      18FFDFA273FFCF723AFF762D0CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFC357
      16FFCC6F39FF732B0DFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFBF4C
      14FF6F260CFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFB55900FFAD5100FFA55100FF9C4900FF944900FF8C4900FF8C41
      00FF321800FF020100FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3218
      00FF844100FF000000FF000000FF000000FF6A6A6AFF595959FF515151FF4141
      41FF383838FF282828FF000000FF000000FF000000FF000000FF000000FF0000
      00FF844100FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF321800FF9C4900FF000000FF0000
      00FF844100FF000000FF000000FF000000FF727272FF626262FF595959FF4949
      49FF000000FF000000FF000000FF321800FFA45100FF9C4900FF000000FF3218
      00FF8C4100FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFAD5100FFA55100FF9C4900FF9C4900FF9449
      00FF321800FF020100FF000000FF000000FF7A7A7AFF6A6A6AFF626262FF5151
      51FF000000FF000000FF000000FF321800FFA45100FFA55100FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF321800FFA45100FF000000FF0000
      00FF000000FF000000FF000000FF000000FF848484FF727272FF6A6A6AFF5959
      59FF515151FF414141FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000203FF309AC3FF2C8CB3FF000203FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF216D88FF84D4F1FF81D1F0FF154A5FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF040D11FF35AFDDFFF1FAFDFFD5EFFAFF30A5D5FF040C10FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF2882A3FF93D8F2FFF3FCFEFFE7FAFEFF8ED3F0FF1C6586FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0A23
      2CFF36B4E6FFF9FDFFFF93E9F9FF9DEBFAFFECFAFEFF2DA6DEFF081F2AFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2D97
      C0FFA8DFF4FFEDF9FDFF3CA2D6FF3CA2D6FFD4F5FCFFA1D7F1FF1F7CA9FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF123F51FF6FC8
      EDFFF9FEFFFF5CDCF4FF3CA1D5FF3CA1D5FF5AD9F4FFEDFBFEFF66BAE5FF0D37
      4CFF000000FF000000FF000000FF000000FF000000FF03090BFF30A5D4FFC8EA
      F7FFE6FAFDFF5BDAF4FF3BA0D5FF3BA0D5FF55D7F2FFC7F3FCFFBFE3F4FF1F88
      C2FF02070AFF000000FF000000FF000000FF000000FF237799FF8BD2F0FFEAFB
      FEFF93E6F8FF5ADAF4FF45B0DDFF3BA0D5FF54D7F2FF5ADBF5FFDEF8FDFF7BBF
      E7FF0E4B70FF000000FF000000FF000000FF071920FF32ADE1FFF3FBFEFFC2F2
      FBFF5ADCF6FF5ADAF4FF62DFF6FF55CBEBFF53D6F2FF399BDEFF1C5DC7FF0441
      BBFF044ABAFF032866FF000000FF000000FF278AB4FF9CD7F1FFE7F9FDFF8AE5
      F8FF58DBF6FF59DAF4FF3BA0D5FF3BA0D5FF399ADDFF3773D2FF8CB4F7FFB7D6
      FEFF70A7F5FF2B69CAFF021C4FFF0E3243FF60BEE8FFF4FCFEFFB4EFFAFF56DA
      F5FF56DAF5FF55D8F3FF56D7F2FF56D6F2FF0D56C0FF8CB4F6FF4B91FFFF1075
      FFFF1F85FFFF3E89EBFF023EA7FF2A99CAFFBDE3F5FFF4FCFEFFEFFBFEFFEEFB
      FEFFEEFBFEFFEFFCFEFFEFFCFEFFEFFBFEFF0441BBFFADCDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF167DEFFF0340BBFF1D6A90FF2BA6E0FF29A3DFFF27A0DDFF259D
      DCFF239ADAFF2197D9FF1E92D6FF198BD3FF044ABAFF619CF4FF167DFFFF0074
      F8FF0074EEFF0266E1FF0242B1FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0D2B61FF2361C6FF1F75E6FF0477
      EAFF0062DDFF034ABAFF002058FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0D275CFF023AA1FF0340
      BAFF023DA4FF002058FF000000FFCB926CFFCB926CFFCB926CFFCB926CFFCB92
      6CFFCB926CFFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFCF5EFFFFBF3ECFFFBF1E9FFFAEF
      E6FFF9EDE4FFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFBF3ECFFFBF1E9FFFAEFE6FFF9ED
      E4FF000000FFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFBF1E9FF000000FFF9EDE4FF0000
      00FFF8E9DEFFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFAEFE6FFF9EDE4FF000000FFF8E9
      DEFFF7E7DBFFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFF9EDE4FFF9EBE1FFF8E9DEFFF7E7
      DBFFF6E5D8FFCB926CFF000000FFCB926CFFCB926CFFCB926CFFCB926CFFCB92
      6CFFCB926CFFCB926CFF000000FFCB926CFFCB926CFFCB926CFFCB926CFFCB92
      6CFFCB926CFFCB926CFF000000FFCB926CFFFCF5EFFFFBF3ECFFFBF1E9FFFAEF
      E6FFF9EDE4FFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFBF3ECFFFBF1E9FFFAEFE6FFF9ED
      E4FF000000FFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFBF1E9FF000000FFF9EDE4FF0000
      00FFF8E9DEFFCB926CFF000000FFCB926CFFCB926CFFCB926CFFCB926CFFCB92
      6CFFCB926CFFCB926CFF000000FFCB926CFFFAEFE6FFF9EDE4FF000000FFF8E9
      DEFFF7E7DBFFCB926CFF000000FFCB926CFFFCF5EFFFFBF3ECFFFBF1E9FFFAEF
      E6FFF9EDE4FFCB926CFF000000FFCB926CFFF9EDE4FFF9EBE1FFF8E9DEFFF7E7
      DBFFF6E5D8FFCB926CFF000000FFCB926CFFFBF3ECFFFBF1E9FFFAEFE6FFF9ED
      E4FF000000FFCB926CFF000000FFCB926CFFCB926CFFCB926CFFCB926CFFCB92
      6CFFCB926CFFCB926CFF000000FFCB926CFFFBF1E9FF000000FFF9EDE4FF0000
      00FFF8E9DEFFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFAEFE6FFF9EDE4FF000000FFF8E9
      DEFFF7E7DBFFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFF9EDE4FFF9EBE1FFF8E9DEFFF7E7
      DBFFF6E5D8FFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFCB926CFFCB926CFFCB926CFFCB92
      6CFFCB926CFFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFCB926CFFCB926CFFCB926CFFCB92
      6CFFCB926CFFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFCF5EFFFFBF3ECFFFBF1E9FFFAEF
      E6FFF9EDE4FFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFBF3ECFFFBF1E9FFFAEFE6FFF9ED
      E4FFF9EBE1FFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFBF1E9FFFAEFE6FFF9EDE4FFF9EB
      E1FFF8E9DEFFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFAEFE6FFF9EDE4FFF9EBE1FFF8E9
      DEFFF7E7DBFFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFF9EDE4FFF9EBE1FFF8E9DEFFF7E7
      DBFFF6E5D8FFCB926CFF000000FFCB926CFFCB926CFFCB926CFFCB926CFFCB92
      6CFFCB926CFFCB926CFF000000FFCB926CFFCB926CFFCB926CFFCB926CFFCB92
      6CFFCB926CFFCB926CFF000000FFCB926CFFFCF5EFFFFBF3ECFFFBF1E9FFFAEF
      E6FFF9EDE4FFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFBF3ECFFFBF1E9FFFAEFE6FFF9ED
      E4FFF9EBE1FFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFBF1E9FFFAEFE6FFF9EDE4FFF9EB
      E1FFF8E9DEFFCB926CFF000000FFCB926CFFCB926CFFCB926CFFCB926CFFCB92
      6CFFCB926CFFCB926CFF000000FFCB926CFFFAEFE6FFF9EDE4FFF9EBE1FFF8E9
      DEFFF7E7DBFFCB926CFF000000FFCB926CFFFCF5EFFFFBF3ECFFFBF1E9FFFAEF
      E6FFF9EDE4FFCB926CFF000000FFCB926CFFF9EDE4FFF9EBE1FFF8E9DEFFF7E7
      DBFFF6E5D8FFCB926CFF000000FFCB926CFFFBF3ECFFFBF1E9FFFAEFE6FFF9ED
      E4FFF9EBE1FFCB926CFF000000FFCB926CFFCB926CFFCB926CFFCB926CFFCB92
      6CFFCB926CFFCB926CFF000000FFCB926CFFFBF1E9FFFAEFE6FFF9EDE4FFF9EB
      E1FFF8E9DEFFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFFAEFE6FFF9EDE4FFF9EBE1FFF8E9
      DEFFF7E7DBFFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFF9EDE4FFF9EBE1FFF8E9DEFFF7E7
      DBFFF6E5D8FFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCB926CFFCB926CFFCB926CFFCB926CFFCB92
      6CFFCB926CFFCB926CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF1A110CFF835A3EFF795238FF9C6A
      49FF9B6A48FF9B6947FF9A6847FF9A6846FF996745FF986644FF976543FF9262
      41FF724F34FF000000FF000000FF000000FF593C2BFF9B6B49FFBA9676FFAB81
      60FFAB805FFFAA7E5EFFAA7D5DFFA97D5CFFA77C5BFFA77A5AFF9C6B4AFF9664
      41FF875A3AFF000000FF000000FF000000FF7E573BFFB99676FFD8C4B8FFE8DE
      D7FFE7DDD6FFE6DCD6FFE4DBD4FFE3DAD3FFE2D8D1FFE1D7D0FFEBE7E5FFEFEF
      EFFF553C28FF000000FF000000FF000000FF885D40FFD9C1A4FFB4906EFFAA7E
      5DFFA87C5CFFA87C5CFFA77B5AFFA77A59FFA67958FFA57757FF9B6947FF9562
      3FFF553C28FF000000FF000000FF000000FF895E40FFDDC8A8FFD4BC94FFE6D4
      B8FFE6D1B5FFE4D0B4FFE3CEB2FFE2CBAFFFE0C9ACFFDFC7A8FFDABE9FFF9969
      48FF553C28FF000000FF000000FF000000FF885C40FFDBC4A5FFC5A674FFD9BE
      9AFFD1B692FFCBAF8DFFCAAD89FFC8AA86FFCBAA82FFD1AF86FFD8BA9AFF9868
      46FF553C28FF000000FF000000FF000000FF885C3EFFD9C1A3FFC0A370FFD2B7
      93FFF5EDE4FFF4ECE2FFF4ECE1FFF4EBE0FFF3EADFFFCBA87DFFD6B795FF9867
      45FF553C28FF000000FF000000FF000000FF875B3DFFD7BE9EFFBC9E6DFFD4B4
      8FFFCBAC87FFC7A780FFC5A47BFFC3A078FFC4A074FFCBA679FFD4B38FFF9766
      44FF553C28FF000000FF000000FF000000FF865A3CFFD5BA9AFFB79967FFD4B2
      89FFD2AE86FFD0AC81FFCFA97BFFCDA576FFCBA372FFCCA373FFD2B089FF9665
      43FF553C28FF000000FF000000FF000000FF86593BFFD2B695FFB39163FFD1AD
      82FFCFAA7DFFCDA778FFCBA474FFCAA16FFFC89D6BFFC89E6BFFD0AD85FF9563
      42FF553C28FF000000FF000000FF000000FF85583AFFD0B391FFAE8A5EFFCEA8
      7AFFCCA575FFCBA272FFC99F6CFFC79C68FFC59964FFC59A66FFCDA781FF9462
      40FF553C28FF000000FF000000FF000000FF84573AFFCEAF8DFFA98459FFCBA3
      73FFCAA16FFFC89D69FFC59A66FFC49861FFC1935CFFC3935FFFCCA47BFF9361
      3FFF553C28FF000000FF000000FF000000FF825737FFCBAB87FFA57C55FFC99E
      6CFFC79C67FFC59864FFC2965FFFC1915AFFC08E57FFC08D59FFCAA076FF9360
      3EFF553C28FF000000FF000000FF000000FF825537FFCAA884FFA27652FFC599
      65FFC39760FFC1935CFFC08F58FFBF8B54FFBD8851FFBE8753FFC99C73FF9260
      3DFF493322FF000000FF000000FF000000FF825536FFCCAA84FFD1AE88FFD2AF
      87FFD1AC84FFD0A980FFCFA67DFFCEA379FFCDA078FFCB9E75FFC7986FFF925F
      3CFF312014FF000000FF000000FF000000FF5A3A24FF935E3BFF925E3AFF915D
      39FF915C38FF905B37FF8F5B36FF8F5A36FF8E5935FF8E5834FF8D5833FF623C
      23FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF281F13FF281F13FF281F13FF271E
      12FF271E12FF261D11FF000000FF000000FF241A0FFF23180EFF22170DFF2016
      0CFF1F150BFF1E140AFF000000FF281F13FFC99A62FFD3AD81FFD0AB7EFFCEA8
      7BFFCBA579FFC59F72FF1F180DFF1F170DFFBA9468FFB79368FFB38F64FFAE8A
      60FFAA865CFF916230FF1E140AFFC59861FFC89961FFFAFAFAFFFAFAFAFFFAFA
      FAFFF8F8F8FFD9C5B0FF9F7545FF9A7041FFD7C3AEFFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FF8A5B2AFF966736FFC59861FFC4965EFFFAFAFAFFCDCDCDFFCACA
      CAFFC5C5C5FFF2F2F2FFDDD8D2FFEBE5DFFFFCFCFCFFCCCCCCFFC9C9C9FFBCBC
      BCFFF9F9F9FF835524FF906131FFC59861FFC0925AFFFAFAFAFFF2F2F2FFEFEF
      EFFFEAEAEAFFD5D5D5FFB4B4B4FFDFDFDFFFF5F5F5FFF1F1F1FFECECECFFDEDE
      DEFFF9F9F9FF7B4E1EFF895C2BFFC59760FFBB8D56FFFAFAFAFFCCCCCCFFCACA
      CAFFC4C4C4FFD4D4D4FFA6A6A6FFD8D8D8FFF5F5F5FFCBCBCBFFC7C7C7FFBABA
      BAFFF8F8F8FF754818FF835626FFC1945EFFB68851FFFAFAFAFFF1F1F1FFEDED
      EDFFE9E9E9FFD4D4D4FFA5A5A5FFD8D8D8FFF5F5F5FFEFEFEFFFEBEBEBFFDCDC
      DCFFF8F8F8FF6F4213FF7D5121FFBD905AFFB0824CFFF9F9F9FFCCCCCCFFC9C9
      C9FFC4C4C4FFD3D3D3FFA5A5A5FFD8D8D8FFF4F4F4FFCACACAFFC5C5C5FFB9B9
      B9FFF8F8F8FF693C0FFF784B1CFFB98C56FFAA7B47FFF9F9F9FFF1F1F1FFEDED
      EDFFE7E7E7FFD3D3D3FFA4A4A4FFD7D7D7FFF4F4F4FFEEEEEEFFEAEAEAFFDCDC
      DCFFF8F8F8FF64370AFF724618FFB58752FFA47541FFF9F9F9FFF9F9F9FFF9F9
      F9FFF8F8F8FFF1F1F1FFE3E3E3FFF3F3F3FFF8F8F8FFF9F9F9FFF8F8F8FFE9E9
      E9FFF8F8F8FF603306FF6E4214FFAF824DFF9D6E3BFF976936FF926331FF8C5E
      2CFF865827FF815222FFAA8F72FFA98E71FF704314FF6B3E10FF673A0CFF6336
      09FF5F3205FF5C2F02FF6A3D11FFAA7C48FFB28A5BFFB28A5BFFB28A5BFFB28A
      5BFFB28A5BFFB28A5BFF7B4F1FFF774A1BFFB28A5BFFB28A5BFFB28A5BFFB28A
      5BFFB28A5BFFB28A5BFF663A0DFFA27440FF9D6E3BFF976936FF926331FF8C5E
      2CFF865827FF815222FF926637FF8F6334FF704314FF6B3E10FF673A0CFF6336
      09FF5F3205FF5C2F02FF592C00FF000000FF000000FF000000FF000000FF0000
      00FF000000FF503315FF664015FF623A11FF5E3D1AFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE9E9E9FFF9F9F9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF8F8F8FF545454FF0000
      00FF000000FF000000FF000000FF000000FF000000FFF9F9F9FFF4F4F4FFF5F5
      F5FFF5F5F5FFF5F5F5FFF1F1F1FFEFEFEFFFE9E9E9FFFCFCFCFFE7E7E7FF5454
      54FF000000FF000000FF000000FF000000FF000000FFFCFCFCFFF7F7F7FFF9F9
      F9FFF7F7F7FFF7F7F7FFF3F3F3FFF0F0F0FFEAEAEAFFFCFCFCFFF6F6F6FFF4F4
      F4FF575757FF000000FF000000FF000000FF000000FFFCFCFCFFF9F9F9FFC0C0
      C0FFBABABAFFB4B4B4FFAFAFAFFFAAAAAAFFA5A5A5FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFBFBFBFFFCFC
      FCFFFCFCFCFFFBFBFBFFF8F8F8FFF5F5F5FFF1F1F1FFECECECFFEAEAEAFFE6E6
      E6FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFC7C7
      C7FFC2C2C2FFBEBEBEFFB8B8B8FFB4B4B4FFB1B1B1FFAEAEAEFFACACACFFEDED
      EDFFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFF8F8F8FFF6F6F6FFF3F3F3FFF2F2
      F2FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFCECE
      CEFFCACACAFFC6C6C6FFC3C3C3FFC0C0C0FFBDBDBDFFBCBCBCFFBABABAFFF6F6
      F6FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFF9F9F9FFF9F9F9FFF8F8
      F8FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFD6D6
      D6FFD3D3D3FFCFCFCFFFCDCDCDFFCBCBCBFFC8C8C8FFC8C8C8FFC6C6C6FFF8F8
      F8FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
      FAFFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFDDDD
      DDFFDBDBDBFFD9D9D9FFD7D7D7FFD5D5D5FFD4D4D4FFD4D4D4FFD4D4D4FFFBFB
      FBFFFCFCFCFF000000FF000000FF000000FF000000FFFBFBFBFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFAFAFAFF000000FF000000FF000000FF000000FFEFEFEFFFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFAFA
      FAFFEDEDEDFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF162E
      19FF3F8249FF53AB5EFF5BBA67FF5DBD69FF57B263FF42884BFF1B361DFF0000
      00FF000000FF000000FF000000FF000000FF000000FF020302FF3D7C45FF5DBD
      69FFA4E1BAFFB9EACCFFC4E0BDFFC4DAB3FFBCD7AFFFA5D7ABFF5ABA65FF3F84
      47FF030904FF000000FF000000FF000000FF010401FF499653FF8BD8A1FFCDF5
      E8FFD4EDDAFFCEEDD3FFCFDFAEFFD6DEB4FFD4D4A1FFCED0A0FFC3D0A9FF86C9
      90FF428E4BFF040A04FF000000FF000000FF3D7E46FF86D79FFFBFF2DEFFC7F2
      D6FFD5EFD5FFD0E9CFFFD5DBA5FFDCDEAAFFDBCD8FFFD7C88AFFC9C08DFFBCD5
      AEFF78C790FF33743BFF000000FF162E1AFF5DBF6AFFBFF3E2FFB4EFB3FFB4F0
      ABFFC0EDB6FFD4E3B6FFD9D89BFFDAD394FFCDB46BFFC7B26BFFB4CB83FF93DF
      99FFAEE7CDFF43984AFF142D15FF408449FF97DEB4FFB4EBCCFFB0EFA6FFC9EE
      A8FFD1EAC9FFD5CF8CFFD9CB8AFFCDB364FFBBBB65FF99D66FFF81DE71FF78DC
      6FFF90D0A2FF87C8A3FF2C672FFF54AD60FFB2ECD2FF9AE2A1FF9CEA8CFFD4ED
      B6FFD0EAC7FFCFB86CFFCCB064FFCBC973FF74DB65FF64D94BFF63D74BFF6AD3
      5BFF71BA7CFFA4DBC1FF337A36FF5BBB68FFBDF0DCFF80D882FF75DB6BFFBEE5
      99FFCCDFA6FFCAA75BFFC1BC6AFFB7DA8AFFA5D85EFF3AA666FF2F9E63FF57BB
      4EFF61AA6AFFB1E4CEFF317C35FF5BBB67FFBDEFDDFF71D17BFF8FD16AFFBBE0
      9DFFC7A65CFFD3AF5CFFC59851FFC5BB6CFFAED178FF39A162FF58B280FF2697
      55FF58A265FFB0E3CEFF2D7832FF52AA5DFFAFE9CFFF82D48FFFBEDC89FFC2CB
      81FFCCA154FF3BA46DFF38A26BFF33A065FF2F9C5FFF53AE7AFF90CBA9FF4DAA
      72FF168E44FFA0D8BBFF296D2CFF3D8146FF91D7AEFF9FDEB3FF83C56EFFA7D0
      7EFFC4A45AFF35A269FF95CEAFFF93CDACFF90CBA9FF8FCBA7FF72BB8FFF89C7
      A0FF44A466FF088735FF215A24FF163119FF50AB5AFFB4EAD3FF67BB72FF6CBC
      6FFFBDB56BFF2F9E61FF93CDACFF6DB98DFF69B788FF64B584FF5FB27EFF65B4
      81FF82C197FF3A9F5AFF007B23FF000000FF34743BFF74BF8CFF98D7B2FF77BF
      7EFFBBC17CFF279A59FF8FCAA8FF8CC8A4FF89C5A0FF87C49DFF68B584FF81C1
      96FF46A464FF057620FF000300FF000000FF030803FF397E3EFF6EB685FFADE8
      C7FFBFD29FFF20964FFF1A9047FF148E41FF0F8A39FF389E5CFF7EC095FF44A2
      60FF06781FFF030D05FF000000FF000000FF000000FF020703FF2A652EFF3787
      3CFF9AC49CFFB2C19CFFBCC09BFFBDC29CFFAFD2B0FF0A8732FF41A05DFF0673
      1FFF030C05FF000000FF000000FF000000FF000000FF000000FF000000FF112A
      12FF235A26FF2A6E2DFF2C732EFF2C732EFF286C2CFF027920FF02791CFF0002
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000505FF003E
      3EFF007E7EFF009A9AFF00B3B3FF00B1B1FF009090FF007676FF003030FF0002
      02FF000000FF000000FF000000FF000000FF000000FF001F1FFF009797FF0ED0
      D0FF88E8E8FFC0F3F3FFF4FDFDFFEFFCFCFFA2EDEDFF5EE0E0FF00C1C1FF0084
      84FF001212FF000000FF000000FF000000FF000000FF008B8BFF64E1E1FFF9FE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFBFBFF09CF
      CFFF006A6AFF000000FF000000FF000000FF000000FF00A9A9FFDBF8F8FFF9FE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFBFBFF92EA
      EAFF009898FF000000FF000000FF000000FF000000FF00A7A7FFD6F7F7FF83E7
      E7FFACEFEFFFD1F6F6FFEAFBFBFFE5FAFAFFB1F0F0FF54DEDEFF00C2C2FF7DE6
      E6FF009595FF000000FF000000FF000000FF000000FF00A5A5FFD1F6F6FF98EB
      EBFF54DEDEFF2BD6D6FF26D5D5FF12D1D1FF00C2C2FF00BBBBFF00BFBFFF78E5
      E5FF009494FF000000FF000000FF000000FF000000FF00A4A4FFCCF5F5FFA7EE
      EEFF7DE6E6FF69E2E2FF7DE6E6FF64E1E1FF00CDCDFF00C1C1FF00C1C1FF6EE3
      E3FF009292FF000000FF000000FF000000FF000000FF00A2A2FFC5F4F4FF92EA
      EAFF64E1E1FF4FDDDDFF6EE3E3FF54DEDEFF00C9C9FF00BCBCFF00BEBEFF69E2
      E2FF009090FF000000FF000000FF000000FF000000FF00A0A0FFC0F3F3FF83E7
      E7FF4FDDDDFF3BD9D9FF5EE0E0FF45DBDBFF00C3C3FF00B7B7FF00BABAFF64E1
      E1FF008D8DFF000000FF000000FF000000FF000000FF009F9FFFBBF2F2FF69E2
      E2FF36D8D8FF26D5D5FF4ADCDCFF36D8D8FF00BFBFFF00B2B2FF00B6B6FF5EE0
      E0FF008989FF000000FF000000FF000000FF000000FF009D9DFFB1F0F0FF54DE
      DEFF21D4D4FF17D2D2FF45DBDBFF2BD6D6FF00BEBEFF00AFAFFF00B2B2FF54DE
      DEFF008383FF000000FF000000FF000000FF000000FF009A9AFF54DEDEFFC0F3
      F3FF45DBDBFF17D2D2FF45DBDBFF2BD6D6FF00BFBFFF00C9C9FF7DE6E6FF00C3
      C3FF007F7FFF000000FF000000FF000000FF000000FF002F2FFF009D9DFF04CE
      CEFFA2EDEDFFC5F4F4FFCCF5F5FFC5F4F4FFACEFEFFF69E2E2FF00B9B9FF007C
      7CFF001C1CFF000000FF000000FF000000FF000000FF000000FF001515FF0063
      63FF009595FF00A0A0FF00AAAAFF00A6A6FF009494FF007F7FFF004A4AFF000B
      0BFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000808FF001C1CFF001A1AFF000404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF714E35FFCB8C5FFFE29B66FFDF98
      63FFDF955EFFDC9258FFD98D54FFD78A4FFFD48549FFD18042FFCE7B3CFFC976
      36FFC87031FF9B5623FF000000FF000000FFD29161FFF8F2EDFFF8F2EDFFF8F2
      EDFFF8F2EDFFF8F2EDFFF8F2EDFFF8F2EDFFF8F2EDFFF8F2EDFFF8F2EDFFF8F2
      EDFFF8F2EDFFBA6522FF000000FF000000FFE19965FFF8F2EDFF62BC70FF5BB9
      69FF55B463FF4FB15BFF47AC54FF41A94CFF39A444FF33A03CFF2C9D36FF2698
      30FFF8F2EDFFBA601BFF000000FF000000FFDF9660FFF8F2EDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF8F2EDFFB65A13FF000000FF000000FFDC925BFFF8F2EDFFDCA071FFDCA0
      71FFDCA071FFDCA071FFDCA071FFDCA071FFDCA071FFDCA071FFDCA071FFDCA0
      71FFF8F2EDFFB1540BFF000000FF000000FFD98D55FFF8F2EDFFDCA071FFFFFF
      FFFFDBA176FFFFFFFFFFFFFFFFFFFFFFFFFFDBA67BFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2E9DFFFAC4D03FF000000FF000000FFD6884DFFF7F0EAFFDCA478FFDCA4
      7BFFDEA67BFFDCA67CFFDCA97EFFDCA982FFDBA67BFFDCA982FFDBA782FFDBAE
      8AFFEAD9CBFFA74500FF000000FF000000FFD38349FFF7F0E9FFDEA97EFFFFFF
      FFFFDEA982FFFFFFFFFFFFFFFFFFFFFFFFFFDBA67BFFFFFFFFFFFFFFFFFFFFFF
      FFFFE9D6C5FFA43F00FF000000FF000000FFD07E41FFF7EDE7FFDEAC85FFDEAE
      87FFDEAE87FFDEAE87FFDEAE87FFDEB18DFFDBA67BFFDBA67BFFDBA782FFDBA7
      7EFFE7D1C0FFA13F00FF000000FF000000FFCC7839FFF5ECE5FFDEB18DFFFFFF
      FFFFDFB493FFFFFFFFFFFFFFFFFFFFFFFFFFDEB292FFF8F0EAFFFFFFFFFFFFFF
      FFFFE7D1C0FFA74A03FF000000FF000000FFC97433FFF5ECE5FFDFB492FFDFB4
      93FFDFB493FFDFB493FFDFB493FFDFB696FFDEAF8AFFDEAF8AFFDEAF8AFFDEAF
      8AFFE7D1C0FFA44500FF000000FF000000FFC26E2CFFF5ECE4FFDFB798FFFFFF
      FFFFDFB999FFFFFFFFFFFFFFFFFFFFFFFFFFDEA67CFFFFFFFFFFFFFFFFFFFFFF
      FFFFE7D1C0FFA44903FF000000FF000000FFBF6925FFF4EAE2FFF2E7DEFFF0E2
      D7FFEDDED1FFECD9CBFFE9D4C5FFE7D1C0FFE7D1C0FFE7D1C0FFE7D1C0FFE7D1
      C0FFE7D1C0FFA24500FF000000FF000000FF914D19FFB15919FFB65811FFB152
      09FFAC4C02FFA94500FFA64100FFA03C00FFA03C00FFA03C00FFA03C00FFA03C
      00FFA03C00FF651C00FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7F7F
      7FFFC6C6C6FFC3C3C3FFBFBFBFFFBABABAFFB5B5B5FFAFAFAFFF6E6E6EFF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C0C0CFF888888FFDCDC
      DCFFE6E3E3FFE1DEDCFFDFDCDCFFDFDCDBFFDEDBDBFFEEECECFFA4A4A4FF0000
      00FF000000FF000000FF000000FF000000FF393939FFB6B6B6FFDFDFDFFFEAEA
      EAFFCFCAC9FFCBC5C4FFCAC3C2FFC8C2C0FFC7C0C0FFDCD9D8FF9D9D9DFF0000
      00FF000000FF000000FF000000FF000000FFCBCBCBFFE9E9E9FFE9E9E9FFE2E1
      E1FFCBC5C3FF979696FF959494FF939292FF919090FFDBD7D6FF979797FF0000
      00FF000000FF000000FF000000FF000000FFC5C5C5FFEFEFEFFFE1E1E1FFDDDD
      DDFFC8C2C1FFC8C1C0FFC5C0BEFFC4BEBDFFC2BCBAFFDAD6D5FF909090FF0000
      00FF000000FF000000FF000000FF000000FFBFBFBFFFECECECFFE0E0E0FFDDDC
      DCFFC7C0BFFF919090FF8E8E8EFF8C8C8CFF898989FFD9D5D4FF8A8A8AFF0000
      00FF000000FF000000FF000000FF000000FFBABABAFFECECECFFDFDFDFFFDAD9
      D9FFC5BEBDFFC3BDBBFFC2BBBAFFC0BAB8FFBFB8B7FFD7D3D3FF838383FF0000
      00FF000000FF000000FF000000FF000000FFB4B4B4FFECECECFFDEDEDEFFD9D8
      D8FFC2BCBAFFC1BAB9FFC0B9B8FF9FC8A3FF4EA854FFD7D3D1FF7C7C7CFF0000
      00FF000000FF000000FF000000FF000000FFAEAEAEFFEBEBEBFFDDDDDDFFD7D5
      D5FFC0BAB8FFBFB8B7FFBDB7B5FF39A040FF359335FF98B2A0FF58926DFF4D8D
      64FF3B7C54FF153922FF000000FF000000FFA7A7A7FFEAEAEAFFDDDDDDFFD5D4
      D3FFBFB8B6FFBDB6B5FFBCB5B3FFBAB3B2FF85A08BFF5FAA80FF94D4B3FFB9E6
      D0FF68BA8EFF2B8E55FF0D391EFF000000FFA1A1A1FFF0F0F0FFE0E0E0FFD4D2
      D2FFBDB5B4FFBBB4B3FFBAB3B1FFB9B1B0FF46875EFF8FD3B0FF91D6B0FFFFFF
      FFFF63BB8BFF65BB8EFF176634FF000000FF797979FFB2B2B2FFD4D4D4FFE1DF
      DFFFC4BEBCFFBCB4B2FFB8B0AFFFB8B0ADFF2F794AFF9BD4B5FFFFFFFFFFFFFF
      FFFFFFFFFFFF94D2B1FF176935FF000000FF000000FF2A2A2AFF6E6E6EFFA2A2
      A2FFC5C4C3FFD9D4D3FFD4CFCEFFD3CECDFF1F6D3CFF60B98AFF5EB986FFFFFF
      FFFF5EB886FF65BB8EFF176634FF000000FF000000FF000000FF000000FF2121
      21FF626262FF727272FF6E6E6EFF696969FF3D674CFF268B51FF62B98CFF94D2
      B1FF62B98CFF268B51FF0D391EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C381CFF166433FF1769
      35FF166433FF0C381CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFC0C0
      C0FFBABABAFFB3B3B3FFABABABFFA2A2A2FF989898FF898989FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFB0B0
      B0FFBABABAFFBFBFBFFFB9B9B9FFB3B3B3FF9C9C9CFF666666FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1010
      10FF9B9B9BFFA8A8A8FFB1B1B1FF999999FF757575FF0E0E0EFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0E0E0EFF858585FF949494FF717171FF0D0D0DFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0A0A0AFF676767FF0B0B0BFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFAE5516FF8A3D10FF030100FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF83491CFFD68749FFD37D41FF813710FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF85512AFFDD965FFFE4B089FFE2AA80FFD0783DFF7D330FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7B52
      34FFE3A373FFE9BA98FFE3AA80FFE0A375FFE1A87AFFD0753BFF762D0CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF78553CFFE8AF
      86FFEDC1A2FFE8B691FFE3A97EFFE0A272FFDFA070FFE0A577FFCF723AFF732B
      0DFF000000FF000000FF000000FF000000FF000000FF7A5941FFE7A77AFFEFC8
      ACFFEEC7A7FFECC0A0FFEABA98FFE7B48FFFE4AE86FFE1A77CFFDFA273FFCC6F
      39FF6F260CFF000000FF000000FF000000FF000000FFDEA27AFFEAAA7EFFE6A6
      77FFE29F6CFFE19660FFDB8D51FFD68341FFD27533FFCD6C21FFC96018FFC357
      16FFBF4C14FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFDEA27AFFEAAA7EFFE6A6
      77FFE29F6CFFE19660FFDB8D51FFD68341FFD27533FFCD6C21FFC96018FFC357
      16FFBF4C14FF000000FF000000FF000000FF000000FF7A5941FFE7A77AFFEFC8
      ACFFEEC7A7FFECC0A0FFEABA98FFE7B48FFFE4AE86FFE1A77CFFDFA273FFCC6F
      39FF6F260CFF000000FF000000FF000000FF000000FF000000FF78553CFFE8AF
      86FFEDC1A2FFE8B691FFE3A97EFFE0A272FFDFA070FFE0A577FFCF723AFF732B
      0DFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7B52
      34FFE3A373FFE9BA98FFE3AA80FFE0A375FFE1A87AFFD0753BFF762D0CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF85512AFFDD965FFFE4B089FFE2AA80FFD0783DFF7D330FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF83491CFFD68749FFD37D41FF813710FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFAE5516FF8A3D10FF030100FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF775237FFD7915FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF765034FFE09560FFDD8F57FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF7B5234FFE5A578FFEABC99FFD98648FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF875936FFE3A373FFE9BA98FFE8B894FFD47A38FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF8C5A34FFE09F6FFFE9BA98FFE5AE85FFE6B18CFFCF7028FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFC079
      45FFE09C69FFE8B794FFE3AA80FFDFA070FFE3AC82FFC96319FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9658
      2CFFDC945DFFE5B28AFFE0A375FFDC9965FFE1A578FFC55A17FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0302
      01FF8A491AFFD68446FFE1A87AFFDB9764FFDEA06FFFBF5015FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF813C0FFFD0753BFFDD9E6CFFDC9A67FFBC4513FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF762D0CFFC96935FFDA9460FFB83E12FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF70230BFFC35D2FFFB63712FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF691D09FFB33111FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFDEA2
      7AFF7A5941FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFEAAA
      7EFFE7A77AFF78553CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE6A6
      77FFEFC8ACFFE8AF86FF7B5234FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE29F
      6CFFEEC7A7FFEDC1A2FFE3A373FF85512AFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE196
      60FFECC0A0FFE8B691FFE9BA98FFDD965FFF83491CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFDB8D
      51FFEABA98FFE3A97EFFE3AA80FFE4B089FFD68749FFAE5516FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFD683
      41FFE7B48FFFE0A272FFE0A375FFE2AA80FFD37D41FF8A3D10FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFD275
      33FFE4AE86FFDFA070FFE1A87AFFD0783DFF813710FF030100FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFCD6C
      21FFE1A77CFFE0A577FFD0753BFF7D330FFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFC960
      18FFDFA273FFCF723AFF762D0CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFC357
      16FFCC6F39FF732B0DFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFBF4C
      14FF6F260CFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF775237FFD7915FFF000000FF000000FF775237FFD791
      5FFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF765034FFE09560FFDD8F57FF000000FF765034FFE09560FFDD8F
      57FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF7B5234FFE5A578FFEABC99FFD98648FF7B5234FFE5A578FFEABC99FFD986
      48FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF8759
      36FFE3A373FFE9BA98FFE8B894FFD47A38FFE3A373FFE9BA98FFE8B894FFD47A
      38FF000000FF000000FF000000FF000000FF000000FF000000FF8C5A34FFE09F
      6FFFE9BA98FFE5AE85FFE6B18CFFCF7028FFE9BA98FFE5AE85FFE6B18CFFCF70
      28FF000000FF000000FF000000FF000000FF000000FFC07945FFE09C69FFE8B7
      94FFE3AA80FFDFA070FFE3AC82FFC96319FFE3AA80FFDFA070FFE3AC82FFC963
      19FF000000FF000000FF000000FF000000FF000000FF96582CFFDC945DFFE5B2
      8AFFE0A375FFDC9965FFE1A578FFC55A17FFE0A375FFDC9965FFE1A578FFC55A
      17FF000000FF000000FF000000FF000000FF000000FF030201FF8A491AFFD684
      46FFE1A87AFFDB9764FFDEA06FFFBF5015FFE1A87AFFDB9764FFDEA06FFFBF50
      15FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF813C
      0FFFD0753BFFDD9E6CFFDC9A67FFBC4513FFD0753BFFDD9E6CFFDC9A67FFBC45
      13FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF762D0CFFC96935FFDA9460FFB83E12FF762D0CFFC96935FFDA9460FFB83E
      12FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF70230BFFC35D2FFFB63712FF000000FF70230BFFC35D2FFFB637
      12FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF691D09FFB33111FF000000FF000000FF691D09FFB331
      11FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFDEA27AFF7A59
      41FF000000FF000000FFDEA27AFF7A5941FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFEAAA7EFFE7A7
      7AFF78553CFF000000FFEAAA7EFFE7A77AFF78553CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFE6A677FFEFC8
      ACFFE8AF86FF7B5234FFE6A677FFEFC8ACFFE8AF86FF7B5234FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFE29F6CFFEEC7
      A7FFEDC1A2FFE3A373FFE29F6CFFEEC7A7FFEDC1A2FFE3A373FF85512AFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFE19660FFECC0
      A0FFE8B691FFE9BA98FFE19660FFECC0A0FFE8B691FFE9BA98FFDD965FFF8349
      1CFF000000FF000000FF000000FF000000FF000000FF000000FFDB8D51FFEABA
      98FFE3A97EFFE3AA80FFDB8D51FFEABA98FFE3A97EFFE3AA80FFE4B089FFD687
      49FFAE5516FF000000FF000000FF000000FF000000FF000000FFD68341FFE7B4
      8FFFE0A272FFE0A375FFD68341FFE7B48FFFE0A272FFE0A375FFE2AA80FFD37D
      41FF8A3D10FF000000FF000000FF000000FF000000FF000000FFD27533FFE4AE
      86FFDFA070FFE1A87AFFD27533FFE4AE86FFDFA070FFE1A87AFFD0783DFF8137
      10FF030100FF000000FF000000FF000000FF000000FF000000FFCD6C21FFE1A7
      7CFFE0A577FFD0753BFFCD6C21FFE1A77CFFE0A577FFD0753BFF7D330FFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFC96018FFDFA2
      73FFCF723AFF762D0CFFC96018FFDFA273FFCF723AFF762D0CFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFC35716FFCC6F
      39FF732B0DFF000000FFC35716FFCC6F39FF732B0DFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFBF4C14FF6F26
      0CFF000000FF000000FFBF4C14FF6F260CFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF765E50FFD4AB8FFFEDBF9EFFEBBD
      9CFFEBBB99FFE9B995FFE7B692FFE6B48FFFE4B18BFFE2AE87FFE0AB83FFDDA8
      7EFFDCA47BFFAC805FFF000000FF000000FFDBB193FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFD19B6FFF000000FF000000FFECBE9DFFFBF7F4FF63A3FFFF62A2
      FFFF5E9FFFFF5B9DFFFF5698FFFF5295FFFF4B8FFFFF458AFFFF4083FFFF3B7D
      FFFFFBF7F4FFD49A6DFF000000FF000000FFEBBC9AFFFBF7F4FF62A3FFFF77BC
      FFFF73BAFFFF6FB8FFFF6BB7FFFF66B2FFFF5FAFFFFF58AAFFFF52A6FFFF397B
      FFFFFBF7F4FFD19668FF000000FF000000FFE9B997FFFBF7F4FF63A3FFFF62A2
      FFFF60A1FFFF5FA0FFFF5D9EFFFF5A9CFFFF5899FFFF5597FFFF5294FFFF5093
      FFFFFBF7F4FFCE9262FF000000FF000000FFE7B693FFFBF7F4FFE9C2A5FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5C5
      AAFFF7F1EBFFCB8E5DFF000000FF000000FFE5B38EFFFAF6F2FFE9C5A9FFFFFF
      FFFFAAD2AEFF6AB071FFD5E9D7FFAAD2AEFF63AC6AFFAAD2AEFFFFFFFFFFE4C0
      A3FFF2E7DEFFC88957FF000000FF000000FFE3B08BFFFAF6F1FFEAC9ADFFFFFF
      FFFFFFFFFFFF60AA67FFD5E9D7FF95C79AFFF9FCF9FF6AB071FFFFFFFFFFE1BC
      9CFFF0E2D8FFC58553FF000000FF000000FFE1AD86FFFAF4F0FFEACBB1FFFFFF
      FFFFFFFFFFFF60AA67FFD5E9D7FF8BC090FFFFFFFFFF60AA67FFFFFFFFFFDFB7
      95FFF0E2D8FFC38552FF000000FF000000FFDFA981FFF9F3EFFFEACEB6FFFFFF
      FFFFBFDDC2FF60AA67FFA0CDA4FFAAD2AEFF66AD6CFFAAD2AEFFFFFFFFFFDDB3
      90FFF0E2D8FFC88C5DFF000000FF000000FFDDA77CFFF9F3EFFFEBD0B9FFFFFF
      FFFFFEFEFEFFFEFFFEFFFEFFFEFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFDBAF
      8BFFF0E2D8FFC5895AFF000000FF000000FFD9A378FFF9F3EEFFEBD0BBFFE7C0
      A3FFE7BEA0FFE6BD9EFFE6BA99FFE3B794FFE1B48EFFDEAF88FFDCAA82FFD9AD
      88FFF0E2D8FFC58B5DFF000000FF000000FFD7A073FFF8F2EDFFF7F0EAFFF6ED
      E6FFF4EAE2FFF3E7DEFFF1E4DBFFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2
      D8FFF0E2D8FFC2885AFF000000FF000000FFA37856FFCA9167FFD19566FFCE91
      61FFCB8D5CFFC98959FFC78654FFC28350FFC28350FFC28350FFC28350FFC283
      50FFC28350FF7F502CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF181818FF1F1F1FFF1F1F1FFF1F1F
      1FFF1F1F1FFF1F1F1FFF181818FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF1F1F1FFF000000FF000000FF0000
      00FF000000FF020201FF645A50FFD7B89BFFF2D1B1FFF4D4B5FFDDC1A5FF9482
      71FF020202FF000000FF000000FF000000FF1F1F1FFF000000FF181818FF1F1F
      1FFF1F1E1EFF766659FF6A635DFF9B938CFFACA59FFFF9EEE2FFFAECDEFFF9E2
      CDFFBCA58EFF020201FF000000FF000000FF1F1F1FFF000000FF1F1F1FFF0000
      00FF846B56FFECCFB4FF9B948DFFF6E3D0FF9A8F84FFF6E2CEFFF7E7D6FFFAEE
      E3FFF8E2CCFF94826EFF000000FF000000FF1F1F1FFF000000FF1F1F1FFF0000
      00FFC39C7CFFF5E2D0FF9A8F84FFF5DDC4FF998E83FFF5E0CAFFF6E1CCFFF7E7
      D6FFF9EBDEFFDBBFA4FF000000FF000000FF1D1D1DFF1F1F1FFF2E2E2EFF1F1F
      1FFF887260FF9B928AFF9E9083FFF4DBC1FF998D81FFF5DEC7FFF5DFC9FFF6E1
      CCFFF9EDE1FFF2D1B1FF000000FF000000FF000000FF000000FF1F1F1FFF0000
      00FFD1A37CFFF8E6D3FFF3D7BCFFF3D9BDFF998C7EFFF4DCC2FFF5DDC5FFF5DF
      C8FFF9ECDFFFEECCABFF000000FF000000FF000000FF000000FF1D1D1DFF1F1F
      1FFF7C6655FF988E83FF998C80FF988A7BFF9E8F81FFF4DABFFFF4DBC1FFF6E1
      CCFFF7E7D7FFD2B294FF000000FF000000FF000000FF000000FF000000FF0A14
      1DFF978E8CFFDFBA9CFFF7E4D2FFF4DBC1FFF3D6BAFFF3D8BCFFF5DEC8FFF8E8
      D9FFEDD0B6FF88735EFF000000FF000000FF000000FF000000FF08111BFF3A71
      A6FF85ADD5FFC7A790FFDFB99BFFF3DDC8FFF7E5D1FFF7E5D3FFF5E1CDFFE8C9
      ADFFA88A70FF020101FF000000FF000000FF000000FF050F18FF2B659AFF74A3
      CEFFAACBE8FF73A1CCFF8C7F77FFB78A68FFCE9E78FFD1A37CFFBF9676FF7F66
      51FF020101FF000000FF000000FF000000FF000000FF1B5B90FF6498C7FF9CC0
      E4FF6296C4FF275076FF010304FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF165D96FF88B4DDFF538C
      BBFF1B486FFF010304FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF082F4CFF20659CFF1241
      68FF010104FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF02080FFF0000
      02FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF060606FF070707FF070707FF0707
      07FF070707FF070707FF060606FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF070707FF000000FF000000FF0000
      00FF000000FF020101FF31261EFFCA9367FFE7AA7AFFEAAF81FFD7A277FF8F6E
      53FF020101FF000000FF000000FF000000FF070707FF000000FF060606FF0707
      07FF080707FF3B2C22FF2A2420FF5B524AFF716860FFF2DDC7FFF4D9BFFFF2C7
      A2FFB78B68FF020101FF000000FF000000FF070707FF000000FF070707FF0000
      00FF724A2FFFD9A57CFF5B534BFFECC9A7FF5A4D41FFECC7A3FFEED0B1FFF4DD
      C9FFF0C7A0FF8F6E51FF000000FF000000FF070707FF000000FF070707FF0000
      00FFA46841FFEBC7A7FF5A4D41FFEBBD95FF594C40FFEBC29DFFECC4A0FFEED0
      B1FFF2D7BFFFD39F75FF000000FF000000FF070707FF070707FF0B0B0BFF0707
      07FF463122FF5B5047FF5F4E40FFE9B990FF594B3EFFEBBF98FFEBC09BFFECC4
      A0FFF2DBC4FFE7AA7AFF000000FF000000FF000000FF000000FF070707FF0000
      00FFAA653BFFF0CEACFFE7B389FFE7B68AFF594A3CFFE9BB92FFEBBD97FFEBC0
      9AFFF2D9C0FFDFA271FF000000FF000000FF000000FF000000FF070707FF0707
      07FF3C291CFF574C40FF594A3DFF574739FF5F4D3EFFE9B88DFFE9B990FFECC4
      A0FFEED0B3FFC1895EFF000000FF000000FF000000FF000000FF000000FF0309
      15FF59504CFFC0865CFFEECAAAFFE9B990FFE7B186FFE7B489FFEBBF9AFFF0D2
      B6FFDBA780FF7B563AFF000000FF000000FF000000FF000000FF010711FF0D35
      72FF4272AFFF986A4EFFC0845BFFE7BD9AFFEECCA8FFEECCACFFEBC4A2FFD29B
      72FF94623FFF020101FF000000FF000000FF000000FF01050EFF072A62FF3265
      A3FF6E9FD2FF3263A0FF56473DFF91512DFFA65F37FFAA653BFF9D603AFF6B43
      29FF010101FF000000FF000000FF000000FF000000FF022155FF255798FF5C8F
      CAFF235595FF082550FF000103FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF012055FF457CBDFF194A
      87FF041D45FF000103FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF010F2AFF03265CFF0017
      3CFF000101FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000207FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF081832FF114386FF0F498FFF0E4689FF103E76FF09192EFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0716
      2FFF104C94FF11569AFF115698FF105192FF0E4886FF0D3C6FFF0A1624FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0E49
      96FF11569EFF0E4889FF0E4986FF104986FF134A84FF113F73FF0E2F55FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0B3C
      86FF7A96B7FF89B6E4FF6F9BC8FF133E6CFF174270FF204369FF103862FF0102
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1B56
      8FFFD9E8F7FF96C4F1FF8DBAE5FF7DA8D1FF88B4DFFFCDDFEEFF20609DFF0104
      05FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2044
      6FFFA5CAEEFFAACCEAFFA6D0F6FFA7D0F6FFAACCEAFFA6CDEEFF234E7AFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF030000FF4224
      16FF326BA6FF9BCCF8FFAED4F7FFAED4F7FFA4CFF6FF3272ADFF45281DFF0502
      00FF000000FF000000FF000000FF000000FF000000FF050100FF431C07FFBB46
      1AFFF4E2D4FF4C79A8FF4B79A7FF4B79A7FF4C79A8FFF3D6C2FFBD441AFF441B
      07FF060301FF000000FF000000FF000000FF010000FF3F1904FFC34A1DFFF6E4
      D6FFFFE4A3FFFFD470FFFFC967FFFFBF61FFFFB55DFF948F9FFF275BC0FF0440
      BAFF0A3FA3FF012057FF000000FF000000FF31190CFF895242FFFCC8AAFFFFD1
      97FFFEC76BFFFEBE66FFFEB862FFFEB05CFF94818AFF3B72CEFF8CB4F7FFB7D6
      FEFF70A7F5FF2B68C8FF021C4FFF000000FF2679CBFF76B2EAFFB29D93FFFFB6
      5EFFFFB561FFFEB15FFFFEAB5BFFFEA457FF224EAAFF8CB4F6FF4B91FFFF1075
      FFFF1F85FFFF3E89EBFF023AA0FF000000FF277BD0FF81B9EEFF9E6456FFF5BA
      83FFFFAB59FFFEA758FFFEA155FFFE9B51FF0440BBFFADCDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF167DEFFF0340BAFF000000FF324C64FF2375C9FF835D5DFFBE5E
      33FFFEB85FFFFEB860FFFEB860FFFEB860FF1D50AEFF619CF4FF167DFFFF0074
      F8FF0074EEFF0266E1FF023CA5FF000000FF000000FF04090BFF0A0808FF6A2E
      11FF8E371AFFA2411FFFA74320FFA64120FF5C4970FF2561C5FF1F75E6FF0477
      EAFF0062DDFF034ABAFF002058FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0D275CFF023AA1FF0340
      BAFF023DA4FF002058FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF091F2EFF218EC7FF19A4E4FF1E9DDAFF1343
      61FF010101FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF07121CFF1FA1DDFF17A5E5FF17A5E5FF17A5E5FF17A5
      E5FF133B56FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0A3558FF32ADE5FF63B7E6FF8CC8F6FF39ACE6FF1BA6
      E5FF1F8CC6FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF072D52FFB7D0E7FF95C4F1FFA0D0FBFF95C5F3FFB5CF
      E4FF2972A6FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF211D1FFF70A2D5FFABD1F2FFADD7FDFFAFD4F5FF91BF
      E7FF2A3E58FF000000FF000000FF000000FF000000FF000000FF0E1725FF3D5A
      8CFF3F5B91FF405D93FF234452FF67738EFF71ACE7FF80B0E3FF63B0E4FF56A4
      D8FF84B0DBFF449CD0FF0F374DFF000000FF000000FF080E18FF425E93FF3F59
      8FFF3F598FFF3F598FFF3F598FFF6D8E9DFF839892FF5B9FA8FF75BDE7FFB3D2
      F0FFE5F3FFFFABD2EFFF407FB4FF000000FF000000FF25416DFF4E6799FF617E
      ADFF7AA5D6FF5371A4FF415B91FF426597FF5CC7B4FF7CD5ECFFB1E3F9FF8ABF
      E7FFADD3F6FFC3E0FCFF629BCDFF000000FF000000FF163963FFA6BEDBFF95C4
      F1FFA0D0FBFF95C5F3FFB5CFE4FF378AB7FF7AD4EDFFC3F6FDFF6ADDF6FF6BCA
      EDFF61A2D7FF5B9ACAFF4C94DBFF000000FF000000FF211D1FFF70A2D5FFABD1
      F2FFADD7FDFFAFD4F5FF70BAE4FF77D3EEFFC7F7FDFF5DDCF5FF59E2F7FF78D6
      F2FF429AD5FF548E6EFF4A9AE6FF000000FF000000FF441800FF697590FF71AC
      E7FF80B0E3FF59A1D7FF75CBE7FFC7F7FDFF5CDCF5FF58E1F7FF79D4F1FF4195
      D6FF337856FF40333AFF1E384EFF000000FF411700FFC36C4CFFFFE8BFFFACA9
      85FF77948FFF72B6D4FFC1F6FDFF61DFF7FF5BE2F8FF77D3F0FF3F8FD3FF0711
      1BFF000000FF000000FF000000FF32170AFFAC6950FFFDD7B1FFFFD683FFA6A3
      78FF78B5D5FF8FB6D1FF53C9E4FF59DFF5FF76D0EDFF408AC9FF07131DFF0000
      00FF000000FF000000FF000000FF3281CFFF92ABCCFFE7AE71FFFFB75DFF4188
      A9FFE0F2FFFF5299D8FF1878BDFF4797C4FF3F84BDFF4893DCFF000000FF0000
      00FF000000FF000000FF000000FF3782C9FF6F84ABFFC87C57FFFFB964FF2C64
      81FF93C7F9FF90C9F9FF3F84C9FF2364A5FF757288FF4A9AE6FF000000FF0000
      00FF000000FF000000FF000000FF162430FF273E57FF713925FFCB6E32FF153D
      52FF295D85FF4987BAFF62879DFF864530FF323A49FF1E384EFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF091F2EFF218EC7FF19A4E4FF1E9DDAFF1343
      61FF010101FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF07121CFF1FA1DDFF17A5E5FF17A5E5FF17A5E5FF17A5
      E5FF133B56FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0A3558FF32ADE5FF63B7E6FF8CC8F6FF39ACE6FF1BA6
      E5FF1F8CC6FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF072D52FFB7D0E7FF95C4F1FFA0D0FBFF95C5F3FFB5CF
      E4FF2972A6FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF211D1FFF70A2D5FFABD1F2FFADD7FDFFAFD4F5FF91BF
      E7FF2A3E58FF000000FF000000FF000000FF000000FF000000FF0E1725FF3D5A
      8CFF3F5B91FF405D93FF234452FF67738EFF71ACE7FF80B0E3FF7BB1E7FF6A97
      C3FF1D461FFF010401FF000000FF000000FF000000FF080E18FF425E93FF3F59
      8FFF3F598FFF3F598FFF3F598FFF6D8E9DFF839892FF7B9388FF738B7DFFA3D5
      B0FF81BE84FF174D1CFF010301FF000000FF000000FF25416DFF4E6799FF617E
      ADFF7AA5D6FF5371A4FF415B91FF426597FF7AD09EFF75CE96FF6FCD8DFF70CD
      87FF9CD8AAFF6BAF6EFF1F3C20FF000000FF000000FF163963FFA6BEDBFF95C4
      F1FFA0D0FBFF95C5F3FFB5CFE4FF3F78A6FF76CE8EFF73CD88FF6ECB82FF68CB
      79FF68C977FF5E955FFF4C95DEFF000000FF000000FF211D1FFF70A2D5FFABD1
      F2FFADD7FDFFAFD4F5FF91BFE7FF528288FF77CF93FF66B17DFF58966EFF4D8D
      64FF408558FF438350FF4A9AE6FF000000FF000000FF441800FF697590FF71AC
      E7FF80B0E3FF7BB1E7FF6A97C3FF72532AFF549864FF5FAA80FF94D4B3FFB9E6
      D0FF68BA8EFF2B8E55FF1B5341FF000000FF411700FFC36C4CFFFFE8BFFFACA9
      85FFA69D7BFF9F9173FFF7CA9BFFE49373FF438258FF8FD3B0FF91D6B0FFFFFF
      FFFF63BB8BFF65BB8EFF176634FF32170AFFAC6950FFFDD7B1FFFFD683FFFFCA
      63FFFFBF5CFFFFB354FFFFA655FFFFC491FF2F794AFF9BD4B5FFFFFFFFFFFFFF
      FFFFFFFFFFFF94D2B1FF176935FF3281CFFF92ABCCFFE7AE71FFFFB75DFFFEAF
      5DFFFEA659FFFD9F53FFFF964BFFFD924BFF1E6C3AFF60B98AFF5EB986FFFFFF
      FFFF5EB886FF65BB8EFF176634FF3782C9FF6F84ABFFC87C57FFFFB964FFFFB6
      5FFFFFAF5CFFFFB15BFFFFB35AFFDE8755FF4C6D57FF268B51FF62B98CFF94D2
      B1FF62B98CFF268B51FF0D391EFF162430FF273E57FF713925FFCB6E32FFD27C
      3FFFD37C3FFFD17A3FFFCD783DFF933D1DFF323A49FF1B5140FF166433FF1769
      35FF166433FF0C381CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF091F2EFF218EC7FF19A4E4FF1E9DDAFF1343
      61FF010101FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF07121CFF1FA1DDFF17A5E5FF17A5E5FF17A5E5FF17A5
      E5FF133B56FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0A3558FF32ADE5FF63B7E6FF8CC8F6FF39ACE6FF1BA6
      E5FF1F8CC6FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF072D52FFB7D0E7FF95C4F1FFA0D0FBFF95C5F3FFB5CF
      E4FF2972A6FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF211D1FFF70A2D5FFABD1F2FFADD7FDFFAFD4F5FF91BF
      E7FF2A3E58FF000000FF000000FF000000FF000000FF000000FF0E1725FF3D5A
      8CFF3F5B91FF405D93FF234452FF67738EFF71ACE7FF80B0E3FF7BB1E7FF6A97
      C3FF1D461FFF010401FF000000FF000000FF000000FF080E18FF425E93FF3F59
      8FFF3F598FFF3F598FFF3F598FFF6D8E9DFF839892FF7B9388FF738B7DFFA3D5
      B0FF81BE84FF174D1CFF010301FF000000FF000000FF25416DFF4E6799FF617E
      ADFF7AA5D6FF5371A4FF415B91FF426597FF7AD09EFF75CE96FF6FCD8DFF70CD
      87FF9CD8AAFF6BAF6EFF1F3C20FF000000FF000000FF163963FFA6BEDBFF95C4
      F1FFA0D0FBFF95C5F3FFB5CFE4FF3F78A6FF76CE8EFF73CD88FF6ECB82FF68CB
      79FF68C977FF5E955FFF4C95DEFF000000FF000000FF211D1FFF70A2D5FFABD1
      F2FFADD7FDFFAFD4F5FF91BFE7FF528288FF77CF93FF4B95A6FF185AB9FF0341
      BBFF0E50B0FF2F6A86FF4A9AE6FF000000FF000000FF441800FF697590FF71AC
      E7FF80B0E3FF7BB1E7FF6A97C3FF72532AFF3D7E90FF3772CFFF8CB4F7FFB7D6
      FEFF70A7F5FF2C69C9FF123D7BFF000000FF411700FFC36C4CFFFFE8BFFFACA9
      85FFA69D7BFF9F9173FFF7CA9BFFE49373FF103EA0FF8CB4F6FF4B91FFFF1075
      FFFF1F85FFFF3E89EBFF023AA0FF32170AFFAC6950FFFDD7B1FFFFD683FFFFCA
      63FFFFBF5CFFFFB354FFFFA655FFFFC491FF0440BBFFADCDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF167DEFFF0340BAFF3281CFFF92ABCCFFE7AE71FFFFB75DFFFEAF
      5DFFFEA659FFFD9F53FFFF964BFFFD924BFF144DB5FF619CF4FF167DFFFF0074
      F8FF0074EEFF0266E1FF023CA5FF3782C9FF6F84ABFFC87C57FFFFB964FFFFB6
      5FFFFFAF5CFFFFB15BFFFFB35AFFDE8755FF4E63A0FF2463C9FF1F75E6FF0477
      EAFF0062DDFF034ABAFF002058FF162430FF273E57FF713925FFCB6E32FFD27C
      3FFFD37C3FFFD17A3FFFCD783DFF933D1DFF323A49FF1E4585FF023AA1FF0340
      BAFF023DA4FF002058FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9191
      91FFBFBFBFFFBABABAFFB4B4B4FFAFAFAFFFA9A9A9FF797979FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFBDBD
      BDFFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FF9A9A9AFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFB4B4
      B4FFC2C2C2FFADADADFFFFFFFFFFADADADFFC2C2C2FF909090FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFACAC
      ACFFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2FF878787FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFA3A3
      A3FFC2C2C2FFADADADFFFFFFFFFFADADADFFC2C2C2FF7E7E7EFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9A9A
      9AFFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FF757575FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF6262
      62FF8A8A8AFF848484FF7E7E7EFF787878FF737373FF4B4B4BFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9191
      91FFBFBFBFFFBABABAFFB4B4B4FFAFAFAFFFA9A9A9FF797979FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFBDBD
      BDFFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FF9A9A9AFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFB4B4
      B4FFC2C2C2FFADADADFFADADADFFADADADFFC2C2C2FF909090FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFACAC
      ACFFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2FF878787FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFA3A3
      A3FFC2C2C2FFADADADFFADADADFFADADADFFC2C2C2FF7E7E7EFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9A9A
      9AFFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FF757575FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF6262
      62FF8A8A8AFF848484FF7E7E7EFF787878FF737373FF4B4B4BFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFEAAA7EFFEAAA
      7EFFE8A87CFFAC7C57FF000000FF000000FF000000FF000000FF724A2AFFCF82
      4BFF000000FF000000FF000000FF000000FF000000FF000000FFE8AA7EFFF2CE
      B3FFEEC0A1FFA97752FF000000FF000000FF000000FF714828FFD88748FFD883
      43FF000000FF000000FF000000FF000000FF000000FF000000FFE6A575FFF0CB
      AFFFECBD9CFFA9734AFF000000FF000000FF774A29FFDF9C67FFE7B38FFFD279
      37FF000000FF000000FF000000FF000000FF000000FF000000FFE29F6EFFEFC8
      AAFFEAB895FFA76D43FF000000FF85512AFFDF9964FFE7B48EFFE6B18CFFCF72
      2AFF000000FF000000FF000000FF000000FF000000FF000000FFE19A63FFEDC3
      A4FFE8B38EFFA3673CFF875229FFDD9662FFE6B48FFFE2A87CFFE4AC84FFCD69
      1CFF000000FF000000FF000000FF000000FF000000FF000000FFDF915AFFEBBF
      9DFFE9BA97FFD07F3FFFE1A171FFE6B28DFFE1A677FFDD9B69FFE1A77CFFC860
      18FF000000FF000000FF000000FF000000FF000000FF000000FFD98A50FFE9BA
      97FFE6B28DFFC27033FFDE9D6BFFE4AD85FFDFA06FFFDB9660FFDFA274FFC557
      16FF000000FF000000FF000000FF000000FF000000FF000000FFD88343FFE8B5
      90FFE1A375FF9C5720FF894514FFD38042FFE0A678FFDA9661FFDE9E6EFFBF50
      15FF000000FF000000FF000000FF000000FF000000FF000000FFD27937FFE5B0
      89FFDE9C6BFF9A4E15FF000000FF813A0FFFD0753BFFDD9E6CFFDC9A68FFBC48
      14FF000000FF000000FF000000FF000000FF000000FF000000FFCF722AFFE3AB
      82FFDB9663FF954812FF000000FF000000FF762D0CFFCA6936FFDA9661FFBA3F
      12FF000000FF000000FF000000FF000000FF000000FF000000FFCD691CFFE1A7
      79FFD8905CFF944111FF000000FF000000FF000000FF72260BFFC56231FFB63A
      12FF000000FF000000FF000000FF000000FF000000FF000000FFC86018FFC55A
      17FFC35316FF8F3C0FFF000000FF000000FF000000FF000000FF6C1D0AFFB537
      11FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFDEA27AFF7A59
      41FF000000FF000000FF000000FF000000FFA9734AFFDF945EFFDD8F57FFD98A
      50FF000000FF000000FF000000FF000000FF000000FF000000FFE8AA7EFFE7A5
      79FF78553BFF000000FF000000FF000000FFA76D43FFE7B28AFFEABB99FFD883
      43FF000000FF000000FF000000FF000000FF000000FF000000FFE6A575FFEFC8
      ACFFE8AF87FF7C5435FF000000FF000000FFA3673CFFE4AD83FFE8B693FFD279
      37FF000000FF000000FF000000FF000000FF000000FF000000FFE29F6EFFEFC8
      AAFFEEC2A5FFE5A578FF85542FFF000000FFA16232FFE3A779FFE6B18CFFCF72
      2AFF000000FF000000FF000000FF000000FF000000FF000000FFE19A63FFEDC3
      A4FFEAB996FFEABD9DFFDF9C67FF854D23FF9D5A29FFE0A171FFE4AC84FFCD69
      1CFF000000FF000000FF000000FF000000FF000000FF000000FFDF915AFFEBBF
      9DFFE6AF86FFE6B088FFE8B691FFDF9C6CFFC96D27FFE2AA80FFE1A77CFFC860
      18FF000000FF000000FF000000FF000000FF000000FF000000FFD98A50FFE9BA
      97FFE3A97DFFE3AA81FFE5B18AFFDD9864FFBD611AFFDFA272FFDFA274FFC557
      16FF000000FF000000FF000000FF000000FF000000FF000000FFD88343FFE8B5
      90FFE3A87DFFE4B088FFD68649FF874110FF974812FFD9915CFFDE9E6EFFBF50
      15FF000000FF000000FF000000FF000000FF000000FF000000FFD27937FFE5B0
      89FFE4AD85FFD68444FF833E11FF000000FF944111FFD68A55FFDC9A68FFBC48
      14FF000000FF000000FF000000FF000000FF000000FF000000FFCF722AFFE3AB
      82FFD38042FF7D390FFF000000FF000000FF8F3C0FFFD48451FFDA9661FFBA3F
      12FF000000FF000000FF000000FF000000FF000000FF000000FFCD691CFFD380
      40FF79370FFF000000FF000000FF000000FF8D360FFFD27E4CFFD8935CFFB63A
      12FF000000FF000000FF000000FF000000FF000000FF000000FFC86018FF7432
      0DFF000000FF000000FF000000FF000000FF8B2F0EFFB83C12FFB63812FFB537
      11FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF010101FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF030303FF3A3A3AFF232323FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0303
      03FF3A3A3AFF727272FF5B5B5BFF232323FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF030303FF3A3A
      3AFF7D7D7DFFADADADFF9B9B9BFF5B5B5BFF232323FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF030303FF3A3A3AFF8585
      85FFBDBDBDFFB4B4B4FFAAAAAAFF979797FF5A5A5AFF232323FF000000FF0000
      00FF000000FF000000FF000000FF000000FF030303FF3A3A3AFF8C8C8CFFCECE
      CEFFC4C4C4FFB9B9B9FFAEAEAEFFA3A3A3FF909090FF585858FF232323FF0000
      00FF000000FF000000FF000000FF000000FF2B2B2BFF6C6C6CFFDEDEDEFFD2D2
      D2FFC7C7C7FFBABABAFFB0B0B0FFA4A4A4FF989898FF818181FF4E4E4EFF1010
      10FF000000FF000000FF000000FF000000FF030303FF3A3A3AFF8C8C8CFFCECE
      CEFFC4C4C4FFB9B9B9FFAEAEAEFFA3A3A3FF909090FF585858FF232323FF0000
      00FF000000FF000000FF000000FF000000FF000000FF030303FF3A3A3AFF8585
      85FFBDBDBDFFB4B4B4FFAAAAAAFF979797FF5A5A5AFF232323FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF030303FF3A3A
      3AFF7D7D7DFFADADADFF9B9B9BFF5B5B5BFF232323FF89A594FF5B9570FF4D8D
      64FF42835AFF153922FF000000FF000000FF000000FF000000FF000000FF0303
      03FF3A3A3AFF727272FF5B5B5BFF232323FF87A693FF5FAA80FF94D4B3FFB9E6
      D0FF68BA8EFF2B8E55FF0D391EFF000000FF000000FF000000FF000000FF0000
      00FF030303FF3A3A3AFF232323FF000000FF46885EFF8FD3B0FF91D6B0FFFFFF
      FFFF63BB8BFF65BB8EFF176634FF000000FF000000FF000000FF000000FF0000
      00FF000000FF010101FF000000FF000000FF2F794AFF9BD4B5FFFFFFFFFFFFFF
      FFFFFFFFFFFF94D2B1FF176935FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF206E3DFF60B98AFF5EB986FFFFFF
      FFFF5EB886FF65BB8EFF176634FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF537D62FF268B51FF62B98CFF94D2
      B1FF62B98CFF268B51FF0D391EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C381CFF166433FF1769
      35FF166433FF0C381CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE9E9E9FFF9F9F9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF8F8F8FF545454FF0000
      00FF000000FF000000FF000000FF000000FF000000FFF9F9F9FFF4F4F4FFF5F5
      F5FFF5F5F5FFF5F5F5FFF1F1F1FFEFEFEFFFE9E9E9FFFCFCFCFFE7E7E7FF5454
      54FF000000FF000000FF000000FF000000FF000000FFFCFCFCFFF7F7F7FFF9F9
      F9FFF7F7F7FFF7F7F7FFF3F3F3FFF0F0F0FFEAEAEAFFFCFCFCFFF6F6F6FFF4F4
      F4FF565656FF000000FF000000FF000000FF000000FFFCFCFCFFF9F9F9FFF9F9
      F9FFF9F9F9FFF7F7F7FFF6F6F6FFF2F2F2FFEBEBEBFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFBFBFBFFFCFC
      FCFFFCFCFCFFFBFBFBFFF8F8F8FFF5F5F5FFF1F1F1FFECECECFFEAEAEAFFE6E6
      E6FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFF8F8F8FFF5F5F5FFF2F2F2FFEFEFEFFFEDED
      EDFFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFF8F8F8FFF6F6F6FFF3F3F3FFF2F2
      F2FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFAFAFAFFF9F9F9FFF6F6F6FFF6F6
      F6FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFF91ACE0FF285FC7FF0441
      BBFF1D58C0FF012056FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFBFBFBFFFBFBFBFFFBFBFBFF92ADE1FF3B74D2FF8CB4F7FFB7D6
      FEFF70A7F5FF2B68C8FF021B4FFF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFF225AC1FF8CB4F6FF4B91FFFF1075
      FFFF1F85FFFF3E89EBFF023AA0FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFF0441BBFFADCDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF167DEFFF0340BAFF000000FF000000FFFBFBFBFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF1C57BFFF619CF4FF167DFFFF0074
      F8FF0074EEFF0266E1FF023CA5FF000000FF000000FFEFEFEFFFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF8AA8DFFF2664CAFF1F75E6FF0477
      EAFF0062DDFF034BB9FF002058FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C275BFF023CA1FF0340
      BAFF023CA3FF022058FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF010101FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF030303FF3A3A3AFF232323FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0303
      03FF3A3A3AFF727272FF5B5B5BFF232323FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF030303FF3A3A
      3AFF7D7D7DFFADADADFF9B9B9BFF5B5B5BFF232323FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF030303FF3A3A3AFF8585
      85FFBDBDBDFFB4B4B4FFAAAAAAFF979797FF5A5A5AFF232323FF000000FF0000
      00FF000000FF000000FF000000FF000000FF030303FF3A3A3AFF8C8C8CFFCECE
      CEFFC4C4C4FFB9B9B9FFAEAEAEFFA3A3A3FF909090FF585858FFAAD4E3FF56A4
      D8FF84B0DBFF449CD0FF0F374DFF000000FF2B2B2BFF6C6C6CFFDEDEDEFFD2D2
      D2FFC7C7C7FFBABABAFFB0B0B0FFA4A4A4FF989898FF88BDCEFF75BDE7FFB3D2
      F0FFE5F3FFFFABD2EFFF407DB5FF000000FF030303FF3A3A3AFF8C8C8CFFCECE
      CEFFC4C4C4FFB9B9B9FFAEAEAEFFA3A3A3FF88B9C9FF7ED4EDFFB1E3F9FF8ABF
      E7FFADD3F6FFC3E0FCFF6199CCFF000000FF000000FF030303FF3A3A3AFF8585
      85FFBDBDBDFFB4B4B4FFAAAAAAFF96BFCDFF7AD4EEFFC3F6FDFF6ADDF6FF6BCA
      EDFF61A2D7FF548FC2FF0C161DFF000000FF000000FF000000FF030303FF3A3A
      3AFF7D7D7DFFADADADFFA3CCD9FF77D3EEFFC7F7FDFF5DDCF5FF59E2F7FF78D6
      F2FF398ACBFF0C1A27FF000000FF000000FF000000FF000000FF000000FF0303
      03FF3A3A3AFF98BDCFFF75CBE7FFC7F7FDFF5CDCF5FF58E1F7FF79D4F1FF4493
      D7FF0A1C2CFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF95B7C9FF73B8D6FFC1F6FDFF61DFF7FF5BE2F8FF77D3F0FF4696DAFF7580
      89FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9BB9
      CEFF78B5D5FF8FB6D1FF53C9E4FF59DFF5FF76D0EDFF4996D7FF727E88FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF4188
      A9FFE0F2FFFF5299D8FF1878BDFF4797C4FF3A81B9FF455461FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2962
      80FF93C7F9FF90C9F9FF3F84C9FF195DA1FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1039
      51FF265C84FF4685B9FF316A8EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF231E
      18FF816B5BFFBC9B81FFE8BC9CFFE8BB97FFBA9578FF7F6450FF231C15FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF695749FFE3BB
      9BFFEFCDB0FFF1D0B7FFF1D3BAFFF0D0B8FFEDCBADFFEBBF9FFFDDA77DFF654C
      37FF000000FF000000FF000000FF000000FF060504FFA88C75FFEECAADFFF0CD
      B3FFEBC1A1FFE8B994FFE8B590FFE6B28AFFE5AE85FFE7B28AFFEABA98FFE6B0
      87FFA0704DFF050401FF000000FF000000FF856E5BFFEEC9ADFFEFCAACFFE6B8
      94FF3C2F25FF080605FF000000FF000000FF080603FF3A2A1DFFDD9E6DFFE5AF
      85FFE2A778FF7A5231FF000000FF28221CFFE8BB99FFEECCAFFFE5B591FF1B16
      11FF0B0806FF775A43FFB18360FFB0815BFF755339FF0B0704FF1B130BFFDA94
      5CFFE5AB7EFFD88C50FF24170CFF846A56FFECC7A8FFEABC9AFF3C2E24FF1812
      0EFFC7946FFFE8B48EFFE4AA7DFFE3A678FFE4AB7EFFC08254FF161009FF3825
      15FFDD965DFFE09F6CFF764A27FFC5997AFFEECBADFFE5B088FF080605FF9870
      51FFE7B48DFF956B49FF372719FF372617FF93633DFFE2A474FF925F36FF0805
      02FFD98846FFE2A678FFB26C33FFE0AD85FFEECAACFFE5A97CFF030200FFDA9B
      6CFFE3A675FF372618FF3C3C3CFF1F1F1FFF362313FFDD945BFFD08346FF0302
      00FFD5813EFFE3A97BFFC87434FFDFA67BFFEDC4A6FFE2A373FF080603FFDF9C
      66FFCA8A59FF302821FFBBBBBBFFB1B1B1FF352D26FFBE753DFFD78341FF0805
      02FFD57D3AFFE3A678FFCB7334FFC28D63FFE4AD83FFD69564FF050401FF3624
      15FF000000FF787878FFDAD9D8FFDBD9D8FF676767FF000000FF241609FF0401
      00FFBE6C30FFD98547FFB2652DFF61452DFF593D27FF0D0905FF000000FF0000
      00FF0D0D0DFFABABABFFABABABFFA1A1A1FF898989FF070707FF000000FF0000
      00FF000000FF351D0EFF472811FF000000FF000000FF000000FF000000FF0000
      00FF6A6A6AFFAAAAAAFFE7E4E3FFE5E2E1FF8D8D8DFF464646FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2222
      22FFAAAAAAFFA1A1A1FF767676FF6E6E6EFF848484FF767676FF0F0F0FFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7F7F
      7FFF9D9D9DFF5E5E5EFF000000FF000000FF4E4E4EFF6D6D6DFF484848FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF323232FF9191
      91FF4A4A4AFF000000FF000000FF000000FF000000FF363636FF4B4B4BFF1818
      18FF000000FF000000FF000000FF000000FF000000FF000000FF626262FF2F2F
      2FFF000000FF000000FF000000FF000000FF000000FF000000FF1B1B1BFF1A1A
      1AFF000000FF000000FF000000FF1D150DFF664B2FFF7F5D3BFF7F5D3BFF7F5D
      3BFF7F5D3BFF7F5D3BFF7F5D3BFF79593AFF473422FF161009FF000000FF0000
      00FF000000FF000000FF000000FF684C30FFA99B8CFFB9B6B3FFB9B6B3FFB9B6
      B3FFB9B6B3FFB9B6B3FFB9B6B1FFB6B1ACFFA3917EFF5C432CFF000000FF0000
      00FF000000FF000000FF000000FF7F5E3CFFB9B6B3FFB9B6B1FFB9B4AFFFB9B4
      AFFFB9B4AEFFB9B3AEFFB7B3ACFFB9B6B1FFB4ACA8FF745537FF000000FF0000
      00FF000000FF000000FF000000FF7F5E3CFFB9B6B3FFB9B4AFFFB9B3ACFFB7B3
      ACFFB7B1ACFFB7B1A9FFB7AFA9FFB7B3ACFFB4ACA8FF745537FF000000FF0000
      00FF000000FF000000FF000000FF7F5E3CFFB9B7B3FFB9B4AEFFB7B3ACFFB7B1
      ABFFB7A898FFB69069FFB7895BFFB7895CFFB7895BFFB28354FFAC7E51FFAC7E
      51FFA3784DFF60462EFF1D150DFF7A5A3AFFB7B3AEFFBCBAB9FFB7B1ABFFB7B1
      A9FFB8926CFFE4D1BDFFFAF6F2FFFAF6F1FFFAF6F1FFFAF5F1FFFAF5F1FFFAF5
      F0FFF6F0E9FFDCC3ACFF7C5B3AFF483521FF987E67FFACA398FFBCBAB9FFBCBA
      B9FFB6885AFFFAF6F2FFFAF5EFFFFAF4EEFFFAF3EDFFF9F3EBFFF9F2EBFFF8F1
      E9FFFAF5EFFFF3EAE2FF9B734AFF000000FF2B2013FF7A5939FFB6B1ACFFA898
      87FFB48455FFFAF6F1FFFAF4EEFFF9F2EAFFF8F1E9FFF8F0E8FFF7EFE6FFF7EE
      E4FFF8F1E9FFF3EAE2FF9B734AFF000000FF000000FF745536FFA89889FF8461
      3EFFAE8052FFFAF7F2FFFAF3ECFFF8F1E9FFF8F0E7FFF7EFE6FFF7EEE4FFF6EC
      E2FFF7EFE7FFF4ECE5FFA0754BFF000000FF060502FF7F5E3CFF83603DFF1B13
      0DFFA57A4EFFF8F1ECFFFDFBF8FFF8F0E7FFF7EFE6FFF7EEE4FFF8F0E8FFF8F1
      EAFFFDFBF9FFF2E9E0FF9B7249FF000000FF0F0B06FF5D442BFF17110AFF0000
      00FF61472DFFCFAD8DFFEBDED1FFFDFCFAFFFDFCFAFFFDFBF8FFF4EBE3FFF1E7
      DDFFD8BDA2FFB08153FF513C26FF000000FF000000FF000000FF000000FF0000
      00FF000000FF3D2D1CFFAD7F51FFF9F6F1FFE2CDB8FFB68556FF9E744AFF966F
      47FF684C30FF0B0804FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF9B7249FFE2CEB9FFB28254FF231A10FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF090603FFAD7F51FFB18253FF241A10FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF140F09FF7D5B3AFF1F170EFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF38B63DFF0D2D0FFF000000FF103812FF33A538FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF071909FF0000
      00FF000000FF000000FF36B13CFF257829FF09130DFF144316FF309C35FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF38B63EFF1852
      1CFF000000FF000000FF34A739FF319D35FF2D5140FF36814CFF319B38FF1F3B
      2EFF000000FF000000FF000000FF000000FF000000FF000000FF33A839FF34AB
      3AFF000000FF33A138FF33A738FF32A437FF32A037FF70C17CFFAEE3C1FF5D8B
      76FF152D22FF000000FF000000FF000000FF000000FF000000FF0D2C0EFF34AA
      3AFF339E39FF43AB49FF9DD4ACFFA3D7B7FF84C28DFF268E2BFF4DB65DFF96C8
      A9FF2A8C2FFF29882EFF28842CFF33A639FF061807FF000000FF000000FF32A4
      38FF37A43DFF8FCEA7FF60B883FF56B179FF5EB174FF36963CFF27882BFF55A3
      60FF1F433AFF000000FF000000FF34A839FF34A939FF206924FF319537FF4EAC
      54FF8CCCA4FF5CB47EFF4DAC71FF40A25BFF4FA957FF99CBA8FF8DBE94FF2782
      2CFF183B27FF000000FF000000FF000000FF277F2BFF31A036FF319D36FF93CF
      ABFF5AB37CFF4CAB70FF3FA05BFF4CA555FF84C097FF55A771FF85BD98FF287C
      2BFF237227FF0E3111FF000000FF000000FF000000FF309734FF50A857FF6BBB
      8BFF4BA96EFF409E5AFF4AA152FF82BE95FF4FA26BFF459C61FF88BD98FF2475
      28FF227126FF216E25FF206A24FF000000FF000000FF2E8E33FF60AC66FF75BD
      90FF429F5BFF499E51FF76B38BFF4CA168FF459B60FF6FB084FF689F6DFF226F
      25FF010703FF000000FF0F3010FF000000FF000000FF1B4C1EFF2B8B30FF75B4
      81FF4B9D52FF77B28BFF4BA068FF44995EFF6FAF83FF347B37FF216C24FF0C29
      0EFF000000FF000000FF000000FF000000FF000000FF000000FF226525FF1E72
      21FF93BF9CFF6AAE81FF4B9D65FF6EAF83FF73A578FF206923FF1F6622FF1E60
      20FF0E2B0EFF000000FF000000FF000000FF000000FF000000FF000000FF1E5B
      21FF28772CFF66A06DFF69A171FF286F2CFF1F6622FF0C270EFF071807FF1B58
      1EFF1B5A1EFF030B03FF000000FF000000FF000000FF000000FF000000FF0000
      00FF16471BFF206A25FF1F6722FF1E6421FF174B18FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF164A19FF1C5C1FFF030B03FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF1A551DFF1A501BFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0D0905FF755738FFB28354FFB78656FFB78656FFB78656FFB78656FFB786
      56FFB78656FF84623EFF1A130BFF000000FF000000FF000000FF000000FF0000
      00FF7F5D3BFFDAC0A8FFFDFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDFC9B3FF9D734AFF000000FF000000FF000000FF000000FF0906
      03FFB58455FFFEFEFDFFFEF6F0FFFEF2E9FFFEEFE4FFFEEEE1FFFEECDEFFFDEA
      DBFFFDEADCFFFFFFFFFFC79F79FF000000FF000000FF000000FF000000FF1610
      09FFBF946AFFFFFFFFFFFEF0E5FFFEEEE2FFFEEBDDFFFDE9DAFFFDE8D7FFFDE6
      D4FFFDE4D1FFFFFFFFFFCDA988FF000000FF000000FF000000FF000000FF0906
      03FFB58455FFFEFEFDFFFEF2E9FFFEECDFFFFDE9D9FFFDE7D6FFFDE6D3FFFDE4
      D0FFFCE4D1FFFFFFFFFFC8A17BFF000000FF000000FF000102FF0A1B37FF0F48
      88FF837264FFDAC0A8FFFEFEFDFFFFFFFFFFFFFFFFFFFEEEE2FFFDE3D0FFFEF2
      E9FFFFFFFFFFDFC9B3FF9D734AFF000000FF000000FF071A33FF074995FF0548
      8BFF17528CFF7B7168FFB58556FFB78656FFD5B79CFFFFFFFFFFFFFFFFFFF8F3
      EFFFD5B79CFF966F47FF1A130BFF000000FF000000FF052D66FF4775AAFF588B
      BFFF255588FF09386BFF0C335FFF18314CFF9E744AFFF5EEE7FFD5B79CFFB182
      53FF5A422AFF000000FF000000FF000000FF000000FF0B325CFFA9C7E3FFA8CF
      F2FF84ABD2FF749FC9FF8DAFCFFF72675CFFD4B598FFAF8052FF513B26FF0000
      00FF000000FF000000FF000000FF000000FF000000FF262126FF73A5D7FFB0D6
      F7FFB1DAFFFFB3D7F8FF79A2C8FFA47951FF483521FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF020000FF591D00FF808DA8FF659F
      DBFF71A3D8FF6AA3DCFF81899EFF561A01FF020000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF010000FF581D02FFDB9174FFFFECB7FFC5B1
      75FFC7A96FFFC7A06AFFFFD09BFFD78467FF511B01FF010000FF000000FF0000
      00FF000000FF000000FF000000FF3E2418FFB28273FFFED7A7FFFFCA70FFFFC1
      63FFFFB75CFFFFAA54FFFEA457FFFEB883FFAC705FFF382319FF000000FF0000
      00FF000000FF000000FF000000FF298AE5FF92A9CAFFE9A969FFFFB45EFFFEAA
      5BFFFEA155FFFE9C50FFFF994CFFEA8B52FF95ADCDFF2681DDFF000000FF0000
      00FF000000FF000000FF000000FF3873AAFF5B75A2FFC16F4BFFFFB860FFFFB9
      61FFFFB55FFFFFB95FFFFFAF5AFFB46041FF597DAEFF3A6FA2FF000000FF0000
      00FF000000FF000000FF000000FF060C0FFF111A21FF532A18FF9F4920FFB156
      2AFFB4562BFFAF522AFFA44820FF562C1CFF0F1921FF070C0FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF454545FF828282FF979797FF9696
      96FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF454545FF949494FFE4E4E4FFEEEEEEFF9595
      95FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF818181FFE2E2E2FFE7E7E7FFB8B8B8FF9292
      92FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF959595FFE4E4E4FFCFCFCFFF6E6E6EFF0000
      00FF8D8D8DFF8B8B8BFF878787FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF939393FFDDDDDDFFC4C4C4FF6B6B6BFF6B6B
      6BFFABABABFFD7D7D7FF848484FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF2A2A2AFF919191FFD4D4D4FFC8C8C8FFBBBBBBFFB9B9
      B9FFC1C1C1FFC3C3C3FF6F6F6FFF000000FF000000FF000000FF000000FF0000
      00FF3B6092FF5285C6FF8F8F8FFFC7C7C7FFCCCCCCFFC7C7C7FFC5C5C5FFC2C2
      C2FFBFBFBFFF7E7E7EFF393939FF000000FF000000FF000000FF000000FF3960
      92FF80B6FFFF7AB3FFFF6DA6F2FFD2D2D2FFB4B4B4FF878787FF848484FF8282
      82FF6D6D6DFF383838FF000000FF000000FF000000FF000000FF395F92FF7CB6
      FFFFA8CEFFFFA7CDFFFF6EABFFFF5D99EEFF838383FF121212FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF365E92FF7AB5FFFFA7CE
      FFFF8FBEFFFF8ABCFFFF9FC8FFFF5FA3FFFF2B69C5FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF355E92FF79B3FFFFA5CCFFFF8DBD
      FFFF7AB2FFFF84B7FFFF9AC4FFFF579DFFFF1B55AAFF000000FF000000FF0000
      00FF000000FF000000FF000000FF335C92FF77B2FFFFA4CCFFFF8CBCFFFF77B1
      FFFF82B5FFFF98C2FFFF569BFFFF1854ACFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF519CFFFFA3CBFFFF8ABBFFFF75AFFFFF7EB4
      FFFF97C2FFFF549BFFFF1653ACFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF4794FFFF9FC7FFFF82B6FFFF7DB3FFFF96C1
      FFFF5198FFFF1553AFFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF3273CCFF5FA3FFFF96C1FFFF93BFFFFF4F97
      FFFF1551AFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF256ED5FF2780FFFF1F7BFFFF1151
      AFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1E15
      0AFF684924FFB47D40FFC38440FFC1843CFFAC7735FF62441EFF1B1207FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF463118FFBD82
      40FFD09F68FFE0BE9FFFE3C4ADFFE3C4ADFFDFBB9EFFC89660FFA96F2EFF3C28
      10FF000000FF000000FF000000FF000000FF000000FF452F18FFC68642FFD9B1
      8BFFE6CDB7FFE0B99CFFD7AA84FFD6A881FFD9B290FFE1C1AAFFD4AD85FFA865
      31FF392310FF000000FF000000FF000000FF1C1309FFB97F3EFFD9B18BFFE6CA
      B2FFD6A87BFFD1A477FFE2C3A7FFE1C2A7FFD0A174FFD1A375FFDDBCA1FFD0AB
      84FF985A2EFF160D07FF000000FF000000FF654722FFCD9B66FFE7CBB3FFD4A4
      78FFD09F75FFCF9D72FFFBF8F5FFFBF8F5FFCB9D6FFFCB9C6FFFCDA075FFDFBF
      A4FFB88959FF512C19FF000000FF000000FFAE7936FFE0BB9EFFDBB292FFCF9F
      73FFCD9D70FFCB9B6FFFDDBEA2FFDDBEA1FFC49869FFC49869FFC39769FFD1AA
      84FFD8B996FF87482CFF000000FF000000FFBD7F37FFE4C9AFFFD0A278FFCC9C
      6FFFC7996AFFC49769FFFFFFFFFFFFFFFEFFC29567FFC09366FFC19366FFC297
      6BFFDFC4AAFF8F4E31FF000000FF000000FFB77831FFE3C7AEFFD0A174FFC498
      69FFC39668FFC39567FFEEE0D4FFFBF7F4FFBE8F64FFBD8E63FFBD8E62FFBD91
      67FFDFC5A9FF8C4B31FF000000FF000000FFA06A2CFFDBBB9BFFD5AC88FFC797
      6AFFC29467FFC09265FFEDDFD3FFFAF7F4FFBA8A61FFB88961FFB78960FFC49C
      76FFD2B792FF7B442CFF000000FF000000FF5A3A1AFFBE905CFFE0C1A7FFC495
      6AFFC19067FFE1CBB7FFFEFDFCFFFFFFFEFFEADCD0FFB3845CFFB2845CFFD4B4
      98FFAD7954FF46271AFF000000FF000000FF170F07FF985D2EFFCFA980FFDABB
      A1FFBD9064FFB98B60FFB6885DFFB2835CFFB0825BFFAF825AFFCDA98CFFC5A4
      77FF7A462DFF120B07FF000000FF000000FF000000FF361F10FF97502FFFCBA6
      7BFFD8BA9EFFC29B75FFB58960FFB3855EFFBD9570FFD1B296FFC4A275FF7D4A
      31FF2C1910FF000000FF000000FF000000FF000000FF000000FF331B10FF894B
      2DFFB17E55FFD5B692FFDBC2A5FFDAC2A5FFD2B38FFFAA7850FF78462DFF2C19
      10FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF150A
      06FF482818FF7D462BFF824A30FF814A30FF75432CFF432718FF120A06FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF3C3C3CFF8E8E8EFF969696FF575757FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1111
      11FF8A8A8AFFE1E1E1FFD2D2D2FF646464FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FFB4B4B4FFE6E6E6FF8A8A8AFF646464FF5C5C5CFF4F4F4FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3232
      32FFB1B1B1FFD6D6D6FF7B7B7BFF878787FFBFBFBFFF878787FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF010101FF7272
      72FFCBCBCBFFD2D2D2FFC9C9C9FFD2D2D2FFC5C5C5FF787878FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF725949FFD7A689FFC3AE
      A2FFD5D5D5FFBABABAFFA5A5A5FF9F9F9FFF6D7570FF007C23FF001605FF0000
      00FF000000FF000000FF000000FF000000FF684F3FFFDFA785FFEBC7AFFFDDA0
      7AFFBBA494FF5D5D5DFF313131FF29302BFF068533FF3A9F5AFF00711DFF0013
      03FF000000FF000000FF000000FF654A3CFFD99C76FFECC7AFFFEDCAB4FFE9BD
      A2FFD28A5FFF000000FF000502FF158D43FF44A466FF82C197FF46A464FF006F
      1BFF001103FF000000FF000000FFD6976FFFEBC3ACFFECC8B1FFEAC0A8FFDEA0
      7AFF75472CFF020602FF269755FF4DAA72FF89C7A0FF65B481FF81C196FF44A2
      60FF006C1AFF000F02FF000000FFCD895FFFE6B79BFFE9BEA4FFDC9A72FF6D40
      26FF000000FF2F9E63FF58B280FF90CBA9FF72BB8FFF5FB27EFF68B584FF7EC0
      95FF41A05DFF02791CFF000000FF4C301EFFC87A4BFFC77544FF6F3F22FF0000
      00FF000000FF339B65FF2D985DFF53AE7AFF8FCBA7FF64B584FF87C49DFF389E
      5CFF007D28FF00761EFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF2D9B5EFF90CBA9FF69B788FF89C5A0FF0E89
      39FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF319F64FF93CDACFF6DB98DFF8CC8A4FF138D
      41FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF35A16AFF95CEAFFF93CDACFF8FCAA8FF198F
      47FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF3BA46DFF35A269FF2F9E61FF279A59FF1F95
      4FFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF3C3C3CFF8E8E8EFF969696FF575757FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1111
      11FF8A8A8AFFE1E1E1FFD2D2D2FF646464FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3333
      33FFB4B4B4FFE6E6E6FF8A8A8AFF646464FF5C5C5CFF4F4F4FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3232
      32FFB1B1B1FFD6D6D6FF7B7B7BFF878787FFBFBFBFFF878787FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF010101FF7272
      72FFCBCBCBFFD2D2D2FFC9C9C9FFD2D2D2FFC5C5C5FF787878FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF725949FFD7A689FFC3AE
      A2FFD5D5D5FFBABABAFFA5A5A5FF1F964FFF279A59FF2F9E61FF35A269FF3BA3
      6DFF000000FF000000FF000000FF000000FF684F3FFFDFA785FFEBC7AFFFDDA0
      7AFFBBA494FF5D5D5DFF313131FF198F47FF8FCAA8FF93CDACFF95CEAFFF35A0
      6AFF000000FF000000FF000000FF654A3CFFD99C76FFECC7AFFFEDCAB4FFE9BD
      A2FFD28A5FFF000000FF000000FF138D41FF8CC8A4FF6DB98DFF93CDACFF319E
      64FF000000FF000000FF000000FFD6976FFFEBC3ACFFECC8B1FFEAC0A8FFDEA0
      7AFF75472CFF000000FF000000FF0E8939FF89C5A0FF69B788FF90CBA9FF2D9A
      5EFF000000FF000000FF000000FFCD895FFFE6B79BFFE9BEA4FFDC9A72FF6D40
      26FF000000FF00761EFF007D28FF389E5CFF87C49DFF64B584FF8FCBA7FF53AE
      7AFF2D985DFF339B65FF000000FF4C301EFFC87A4BFFC77544FF6F3F22FF0000
      00FF000000FF02791CFF41A05DFF7EC095FF68B584FF5FB27EFF72BB8FFF90CB
      A9FF58B280FF2F9E63FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000F02FF006C1AFF44A260FF81C196FF65B481FF89C7A0FF4DAA
      72FF269755FF020602FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF001103FF006F1BFF46A464FF82C197FF44A466FF158D
      43FF000502FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF001303FF00711DFF3A9F5AFF068533FF0006
      03FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF001605FF007C23FF000802FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF181818FF1F1F1FFF1F1F1FFF1F1F
      1FFF1F1F1FFF1F1F1FFF181818FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF1F1F1FFF000000FF000000FF0000
      00FF000000FF020201FF645A50FFD7B89BFFF2D1B1FFF4D4B5FFDDC1A5FF9482
      71FF020202FF000000FF000000FF000000FF1F1F1FFF000000FF181818FF1F1F
      1FFF1F1E1EFF766659FF6A635DFF9B938CFFACA59FFFF9EEE2FFFAECDEFFF9E2
      CDFFBCA58EFF020201FF000000FF000000FF1F1F1FFF000000FF1F1F1FFF0000
      00FF846B56FFECCFB4FF9B948DFFF6E3D0FF9A8F84FFF6E2CEFFF7E7D6FFFAEE
      E3FFF8E2CCFF94826EFF000000FF000000FF1F1F1FFF000000FF1F1F1FFF0000
      00FFC39C7CFFF5E2D0FF9A8F84FFF5DDC4FF998E83FFF5E0CAFFF6E1CCFFF7E7
      D6FFF9EBDEFFDBBFA4FF000000FF000000FF1D1D1DFF1F1F1FFF2E2E2EFF1F1F
      1FFF887260FF9B928AFF9E9083FFF4DBC1FF998D81FFF5DEC7FFF5DFC9FFF6E1
      CCFFF9EDE1FFF2D1B1FF000000FF000000FF000000FF000000FF1F1F1FFF0000
      00FFD1A37CFFF8E6D3FFF3D7BCFFF3D9BDFF998C7EFFF4DCC2FFF5DDC5FFF5DF
      C8FFF9ECDFFFEECCABFF000000FF000000FF000000FF000000FF1D1D1DFF1F1F
      1FFF7C6655FF988E83FF998C80FF988A7BFF9E8F81FFF4DABFFFF4DBC1FFF6E1
      CCFFF7E7D7FFD2B294FF000000FF000000FF000000FF000000FF000000FF0A14
      1DFF978E8CFFDFBA9CFFF7E4D2FFF4DBC1FFF3D6BAFFF3D8BCFFF5DEC8FFF8E8
      D9FFEDD0B6FF88735EFF000000FF000000FF000000FF000000FF08111BFF3A71
      A6FF85ADD5FFC7A790FFDFB99BFFF3DDC8FFF7E5D1FF89A594FF5B9570FF4D8D
      64FF42845AFF163922FF000000FF000000FF000000FF050F18FF2B659AFF74A3
      CEFFAACBE8FF73A1CCFF8C7F77FFB78A68FF87A693FF5FAA80FF94D4B3FFB9E6
      D0FF68BA8EFF2B8E55FF0D391EFF000000FF000000FF1B5B90FF6498C7FF9CC0
      E4FF6296C4FF275076FF010304FF000000FF46885EFF8FD3B0FF91D6B0FFFFFF
      FFFF63BB8BFF65BB8EFF176634FF000000FF000000FF165D96FF88B4DDFF538C
      BBFF1B486FFF010304FF000000FF000000FF2F794AFF9BD4B5FFFFFFFFFFFFFF
      FFFFFFFFFFFF94D2B1FF176935FF000000FF000000FF082F4CFF20659CFF1241
      68FF010104FF000000FF000000FF000000FF206E3DFF60B98AFF5EB986FFFFFF
      FFFF5EB886FF65BB8EFF176634FF000000FF000000FF000000FF02080FFF0000
      02FF000000FF000000FF000000FF000000FF537D62FF268B51FF62B98CFF94D2
      B1FF62B98CFF268B51FF0D391EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C381CFF166433FF1769
      35FF166433FF0C381CFF000000FF000000FF181818FF1F1F1FFF1F1F1FFF1F1F
      1FFF1F1F1FFF1F1F1FFF181818FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF1F1F1FFF000000FF000000FF0000
      00FF000000FF020201FF645A50FFD7B89BFFF2D1B1FFF4D4B5FFDDC1A5FF9482
      71FF020202FF000000FF000000FF000000FF1F1F1FFF000000FF181818FF1F1F
      1FFF1F1E1EFF766659FF6A635DFF9B938CFFACA59FFFF9EEE2FFFAECDEFFF9E2
      CDFFBCA58EFF020201FF000000FF000000FF1F1F1FFF000000FF1F1F1FFF0000
      00FF846B56FFECCFB4FF9B948DFFF6E3D0FF9A8F84FFF6E2CEFFF7E7D6FFFAEE
      E3FFF8E2CCFF94826EFF000000FF000000FF1F1F1FFF000000FF1F1F1FFF0000
      00FFC39C7CFFF5E2D0FF9A8F84FFF5DDC4FF998E83FFF5E0CAFFF6E1CCFFF7E7
      D6FFF9EBDEFFDBBFA4FF000000FF000000FF1D1D1DFF1F1F1FFF2E2E2EFF1F1F
      1FFF887260FF9B928AFF9E9083FFF4DBC1FF998D81FFF5DEC7FFAAD4E3FF56A4
      D8FF84B0DBFF449CD0FF0F374DFF000000FF000000FF000000FF1F1F1FFF0000
      00FFD1A37CFFF8E6D3FFF3D7BCFFF3D9BDFF998C7EFF88BDCEFF75BDE7FFB3D2
      F0FFE5F3FFFFABD2EFFF407DB5FF000000FF000000FF000000FF1D1D1DFF1F1F
      1FFF7C6655FF988E83FF998C80FF988A7BFF88B9C9FF7ED4EDFFB1E3F9FF8ABF
      E7FFADD3F6FFC3E0FCFF6199CCFF000000FF000000FF000000FF000000FF0A14
      1DFF978E8CFFDFBA9CFFF7E4D2FF96BFCDFF7AD4EEFFC3F6FDFF6ADDF6FF6BCA
      EDFF61A2D7FF5E96C9FF000000FF000000FF000000FF000000FF08111BFF3A71
      A6FF85ADD5FFC7A790FFA3CCD9FF77D3EEFFC7F7FDFF5DDCF5FF59E2F7FF78D6
      F2FF4796D5FF020101FF000000FF000000FF000000FF050F18FF2B659AFF74A3
      CEFFAACBE8FF98BDCFFF75CBE7FFC7F7FDFF5CDCF5FF58E1F7FF79D4F1FF4494
      D7FF020101FF000000FF000000FF000000FF000000FF1B5B90FF6498C7FF9CC0
      E4FF95B7C9FF73B8D6FFC1F6FDFF61DFF7FF5BE2F8FF77D3F0FF4696DAFF0000
      00FF000000FF000000FF000000FF000000FF000000FF165D96FF88B4DDFF9BB9
      CEFF78B5D5FF8FB6D1FF53C9E4FF59DFF5FF76D0EDFF4996D7FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF082F4CFF20659CFF4188
      A9FFE0F2FFFF5299D8FF1878BDFF4797C4FF3A81B9FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF02080FFF2962
      80FF93C7F9FF90C9F9FF3F84C9FF195DA1FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1039
      51FF265C84FF4685B9FF316A8EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFDEA27AFF7A5941FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFEAAA7EFFE7A77AFF78553CFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6A677FFEFC8ACFFE8AF86FF7B5234FF0000
      00FF000000FF000000FF000000FF000000FF2F2F2FFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF2F2F2FFF000000FFE29F6CFFEEC7A7FFEDC1A2FFE3A373FF8551
      2AFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE19660FFECC0A0FFE8B691FFE9BA98FFDD96
      5FFF83491CFF000000FF000000FF000000FFBE1B00FFFF2400FFFF2400FFFF24
      00FFFF2400FFBE1B00FF000000FFDB8D51FFEABA98FFE3A97EFFE3AA80FFE4B0
      89FFD68749FFAE5516FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFD68341FFE7B48FFFE0A272FFE0A375FFE2AA
      80FFD37D41FF8A3D10FF000000FF000000FFBE1B00FFFF2400FFFF2400FFFF24
      00FFFF2400FFBE1B00FF000000FFD27533FFE4AE86FFDFA070FFE1A87AFFD078
      3DFF813710FF030100FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCD6C21FFE1A77CFFE0A577FFD0753BFF7D33
      0FFF000000FF000000FF000000FF000000FF2F2F2FFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF2F2F2FFF000000FFC96018FFDFA273FFCF723AFF762D0CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFC35716FFCC6F39FF732B0DFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFBF4C14FF6F260CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFDEA27AFF7A5941FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFEAAA7EFFE7A77AFF78553CFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6A677FFEFC8ACFFE8AF86FF7B5234FF0000
      00FF000000FF000000FF000000FF000000FF2F2F2FFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF2F2F2FFF000000FFE29F6CFFEEC7A7FFEDC1A2FFE3A373FF8551
      2AFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE19660FFECC0A0FFE8B691FFE9BA98FFDD96
      5FFF83491CFF000000FF000000FF000000FF0000BEFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000BEFF000000FFDB8D51FFEABA98FFE3A97EFFE3AA80FFE4B0
      89FFD68749FFAE5516FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFD68341FFE7B48FFFE0A272FFE0A375FFE2AA
      80FFD37D41FF8A3D10FF000000FF000000FF2F2F2FFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF2F2F2FFF000000FFD27533FFE4AE86FFDFA070FFE1A87AFFD078
      3DFF813710FF030100FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCD6C21FFE1A77CFFE0A577FFD0753BFF7D33
      0FFF000000FF000000FF000000FF000000FF2F2F2FFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF2F2F2FFF000000FFC96018FFDFA273FFCF723AFF762D0CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFC35716FFCC6F39FF732B0DFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFBF4C14FF6F260CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF002EC6FF002EC6FF002EC6FF00196FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF002EC6FF0036E8FF0036E8FF00196FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF002EC6FF0036E8FF0036E8FF00196FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF00196FFF00196FFF00196FFF000E3AFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF00269EFF0029B0FF0029B0FF001660FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF002EC6FF0036E8FF0036E8FF00196FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF002EC6FF0036E8FF0036E8FF00196FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF00269EFF002EC6FF0036E8FF001660FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00228DFF0036E8FF000A2EFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF002EC6FF002EC6FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0029B0FF002EC6FF001146FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF00196FFF000417FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF9D9D9DFFA4A4A4FF9F9F
      9FFF979797FF8E8E8EFF848484FF777777FF6B6B6BFF606060FF565656FF4F4F
      4FFF484848FF000000FF000000FF000000FF000000FF555555FFA0A0A0FFC3C3
      C3FFC1C1C1FFBBBBBBFFB5B5B5FFAEAEAEFFA8A8A8FFA0A0A0FF9B9B9BFF6969
      69FF262626FF000000FF000000FF000000FF000000FF000000FF525252FFA9A9
      A9FFBCBCBCFFB0B0B0FFA2A2A2FF9A9A9AFF999999FF9E9E9EFF6B6B6BFF2828
      28FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF4E4E
      4EFF9C9C9CFFB5B5B5FFA3A3A3FF9C9C9CFFA0A0A0FF6D6D6DFF2B2B2BFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF4B4B4BFF8D8D8DFFAAAAAAFFA3A3A3FF707070FF303030FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF414141FF7C7C7CFF747474FF333333FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4B4B4BFF383838FF010101FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFDEA27AFFEAAA7EFFE6A6
      77FFE29F6CFFE19660FFDB8D51FFD68341FFD27533FFCD6C21FFC96018FFC357
      16FFBF4C14FF000000FF000000FF000000FF000000FF7A5941FFE7A77AFFEFC8
      ACFFEEC7A7FFECC0A0FFEABA98FFE7B48FFFE4AE86FFE1A77CFFDFA273FFCC6F
      39FF6F260CFF000000FF000000FF000000FF000000FF000000FF78553CFFE8AF
      86FFEDC1A2FFE8B691FFE3A97EFFE0A272FFDFA070FFE0A577FFCF723AFF732B
      0DFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7B52
      34FFE3A373FFE9BA98FFE3AA80FFE0A375FFE1A87AFFD0753BFF762D0CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF85512AFFDD965FFFE4B089FFE2AA80FFD0783DFF7D330FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF83491CFFD68749FFD37D41FF813710FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFAE5516FF8A3D10FF030100FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF9A9A9AFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF9A9A9AFF9A9A9AFF9A9A9AFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9A9A
      9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF9A9A9AFF9A9A
      9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF9A9A9AFF9A9A
      9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9A9A
      9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF9A9A9AFF9A9A9AFF9A9A9AFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF9A9A9AFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0000FFFF0000FFFF0000FFFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0000FFFF0000FFFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0000FFFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0B292FFF12414AFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF32ACC8FF36BBDAFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF14434FFF46CEEDFF46CDEDFF1C6174FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF34B8D9FF54D6F2FF57D6F3FF33BAE1FF010405FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF1D6274FF47CEEDFF5BD9F4FF57D6F3FF41C4EAFF1F7995FF000000FF0000
      00FF000000FF000000FF000000FF030A0BFF164C59FF278499FF30A7C4FF36BC
      DEFF47CEEDFF59D9F4FF45D3F2FF38CBF0FF53CFF1FF3CBEE8FF2BACD9FF2597
      C0FF1D7698FF104A60FF031319FF31A8C3FF4BD5EFFF56DCF2FF5CDEF5FF5EDE
      F5FF5DDCF6FF46D4F3FF2BC9EFFF27C3EEFF33C3EDFF4EC9EFFF4AC3EEFF43BD
      EBFF3BB6E7FF31AFE2FF2198C9FF000000FF31AAC9FF4AD2EEFF61E1F6FF3FD6
      F4FF30CFF2FF2CCBF0FF28C5EFFF24C0EDFF20BBEBFF1DB6EAFF1EB3E9FF45BD
      ECFF34B1E4FF209ACDFF010B0FFF000000FF010505FF2FABCCFF48CEEDFF5CDB
      F5FF2ECDF1FF2AC8EFFF25C2EEFF22BDECFF1EB7EAFF1AB3E9FF47BFECFF35B1
      E4FF209CD1FF020F14FF000000FF000000FF000000FF02090BFF2EABD0FF57D5
      F2FF44D0F2FF27C3EEFF23BFEDFF20BAEBFF1BB5E9FF1FB3E9FF44BCEBFF209E
      D3FF031219FF000000FF000000FF000000FF000000FF000000FF16596DFF42C5
      EAFF55D2F2FF25C1EDFF21BCECFF1DB6EAFF19B2E9FF34B8EAFF38B2E6FF156C
      92FF000000FF000000FF000000FF000000FF000000FF000000FF1C738FFF47C8
      ECFF47CCF1FF2FC2EDFF40C3EEFF44C2EDFF2AB5EAFF24B0E8FF3AB3E7FF157A
      ADFF000000FF000000FF000000FF000000FF000000FF000000FF228AAEFF4BCA
      EEFF52CEF1FF4EC8EFFF3EB9E8FF37B4E5FF44BCEBFF42B9EBFF3CB2E8FF1281
      BEFF000000FF000000FF000000FF000000FF000000FF000000FF249AC4FF4ECB
      EFFF37B6E5FF23A2D6FF15688AFF125A7BFF1A93CEFF28A2DDFF37ADE5FF1082
      C7FF000000FF000000FF000000FF000000FF000000FF000000FF26A3D4FF24A1
      D3FF135B78FF000000FF000000FF000000FF000000FF083C5AFF0E7CBFFF0B7F
      CBFF000000FF000000FF000000FF000000FF000000FF000000FF0C3C4FFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0329
      44FF000305FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF272727FF3E3E3EFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFA5A5A5FFB4B4B4FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF414141FFC7C7C7FFC7C7C7FF5E5E5EFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFB2B2B2FFCFCFCFFFD0D0D0FFB5B5B5FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF5F5F5FFFC8C8C8FFD2D2D2FFD0D0D0FFC0C0C0FF777777FF000000FF0000
      00FF000000FF000000FF000000FF090909FF4A4A4AFF7D7D7DFFA1A1A1FFB6B6
      B6FFC8C8C8FFD2D2D2FFCCCCCCFFC4C4C4FFCBCBCBFFBBBBBBFFABABABFF9696
      96FF747474FF4A4A4AFF131313FFA1A1A1FFCDCDCDFFD3D3D3FFD6D6D6FFD6D6
      D6FFD5D5D5FFCDCDCDFFC1C1C1FFBDBDBDFFBEBEBEFFC5C5C5FFC1C1C1FFBCBC
      BCFFB6B6B6FFAFAFAFFF999999FF000000FFA6A6A6FFCBCBCBFFD8D8D8FFCDCD
      CDFFC7C7C7FFC3C3C3FFBFBFBFFFBBBBBBFFB7B7B7FFB3B3B3FFB1B1B1FFBDBD
      BDFFB1B1B1FF9A9A9AFF0C0C0CFF000000FF040404FFA5A5A5FFC8C8C8FFD4D4
      D4FFC4C4C4FFC0C0C0FFBDBDBDFFB9B9B9FFB4B4B4FFB1B1B1FFBEBEBEFFB1B1
      B1FF9D9D9DFF0F0F0FFF000000FF000000FF000000FF090909FFA7A7A7FFCFCF
      CFFFCACACAFFBDBDBDFFBABABAFFB6B6B6FFB2B2B2FFB2B2B2FFBCBCBCFF9F9F
      9FFF121212FF000000FF000000FF000000FF000000FF000000FF585858FFC0C0
      C0FFCDCDCDFFBCBCBCFFB8B8B8FFB3B3B3FFB0B0B0FFB7B7B7FFB3B3B3FF6D6D
      6DFF000000FF000000FF000000FF000000FF000000FF000000FF717171FFC3C3
      C3FFC8C8C8FFBDBDBDFFC0C0C0FFC0C0C0FFB4B4B4FFB0B0B0FFB4B4B4FF7D7D
      7DFF000000FF000000FF000000FF000000FF000000FF000000FF898989FFC5C5
      C5FFCACACAFFC4C4C4FFB8B8B8FFB4B4B4FFBCBCBCFFBABABAFFB4B4B4FF8686
      86FF000000FF000000FF000000FF000000FF000000FF000000FF989898FFC7C7
      C7FFB5B5B5FFA3A3A3FF696969FF5B5B5BFF969696FFA5A5A5FFB0B0B0FF8989
      89FF000000FF000000FF000000FF000000FF000000FF000000FFA3A3A3FFA1A1
      A1FF5B5B5BFF000000FF000000FF000000FF000000FF3F3F3FFF818181FF8888
      88FF000000FF000000FF000000FF000000FF000000FF000000FF3C3C3CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2D2D
      2DFF030303FF000000FF000000FF000000FF000000FF302413FFAE8548FFEABB
      80FFE8B675FFE6B16BFFE4AF66FFD4A158FFC99853FFB68B4CFFB4894AFFA57C
      44FF94713DFF41321BFF040301FF000000FF000000FF5E4726FFEABF8BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9F4FFFBF3EAFFF8EBD9FFF8E6D3FFF5DF
      C5FFE9CBA5FFCE9B56FF513D21FF000000FF000000FF70542EFFEBC599FFFFFF
      FFFFFCEFE2FFFDF0E7FFFDF1EBFFFDF5EEFFFDF8F1FFFDFAF7FFFFFCFAFFFFFF
      FFFFFEFBF7FFF4DABFFFC89552FF000000FF000000FF697863FF59CDE0FF58D2
      EDFF56CCE6FF54C9E5FF52C5E4FF4DC2E3FF58C2E3FFE6EAE4FFFCF0E4FFFFFF
      FFFFE09F6EFFFFFBF9FFDFB786FF000000FF000203FF5AA0A0FF72DEF3FF88E3
      F6FF84DEF5FF80D9F4FF76D3F1FF4EC1E8FFAFD5D9FFFAE9D8FFFCEADBFFFFFF
      FDFFD29C6FFFEED9C0FFBA894BFF000000FF081A1DFF40C4E1FF92E7F8FF5DD8
      F4FF8FE0F6FF7BD6F2FF50C2E9FFA9CED1FFFAE2CAFFFAE2CDFFFAE5D0FFFFFE
      FDFFCB8E58FFBF8B4CFF362815FF010506FF1E6879FF69D9F1FF95E7F8FF45CF
      F2FF88DCF4FF36B6E1FFA2CACDFFFADDC0FFFADDC0FFF9DDC3FFFBE1C8FFFFFD
      FBFFC89355FF0D0A04FF000000FF0C2A32FF35B4D5FF8FE6F8FF8CE3F7FF5ED2
      F2FF83D7F4FF39B4DEFF84C0D1FF89C0D0FF81BCD0FF8EBDCEFFE1D7CAFFFFFC
      FAFFC08C51FF0B0803FF000000FF2C9BB7FF6CD8F0FF66D3EFFF64CFEDFF83D9
      F3FF87D7F4FF7BCFF1FF56BBE8FF50B6E5FF209CD7FFA2BFC9FFF1DECBFFFCF9
      F5FFB37F44FF010100FF000000FF185769FF256E81FF70A09EFF8BD5ECFF3BB4
      DDFF7BD0F0FF6BC7ECFF42B1E2FF6FB3CFFFDBD3C3FFFADDC2FFFBE7D4FFF5ED
      E2FF9D6C3AFF000000FF000000FF000000FF1B110AFFB68554FFF2FAFBFF2FAD
      DDFF4FB9E6FF38A8D7FFA6C2C9FFF9DDC0FFFADBBFFFFADCC2FFFDEBDEFFECDC
      CDFF865B31FF000000FF000000FF0D0805FF6D4928FFD5AD8BFF5EBCDFFF41B4
      E3FF68B0CBFFEBD1B6FFF8DABCFFF8DEC1FFFAE1C5FFFAE4CCFFFDF5ECFFE2CE
      B9FF714C28FF000000FF000000FF362313FF976335FF8B8F7DFF3AA5CFFF9E9E
      90FFD79A68FFD89561FFD6915BFFD48E57FFD38D55FFE29C67FFFAE3D1FFD8BA
      A1FF613F22FF000000FF000000FF52341BFFC7A384FFD8EFF9FFD9EFF8FFFFFF
      FFFFFFFFFFFFFFFEFCFFFEFBF7FFFEF7F1FFFEF6F1FFE4AD85FFFAE8DBFFCEAE
      94FF53351CFF000000FF000000FF3C2513FFB78F6BFFD6B9A2FFDFC5B2FFE7D4
      C2FFEEDFD3FFF5EAE2FFFBF4EFFFFDFAF6FFFFFEFDFFFBEBDFFFFBEFE6FFC09C
      7EFF402816FF000000FF000000FF0B0603FF4A2E18FF5B391EFF663F22FF7146
      25FF7A4C28FF84522CFF8C572EFF945F37FF99673FFFA2724DFFAC815DFF7A4C
      28FF1D1109FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF696DFEFF696DFEFF696D
      FEFF000000FF71A9FFFF71A9FFFF71A9FFFF000000FF65D5F0FF65D5F0FF65D5
      F0FF000000FF000000FF000000FF000000FF000000FF696DFEFF696DFEFF696D
      FEFF000000FF71A9FFFF71A9FFFF71A9FFFF000000FF65D5F0FF65D5F0FF65D5
      F0FF000000FF000000FF000000FF000000FF000000FF696DFEFF696DFEFF696D
      FEFF000000FF71A9FFFF71A9FFFF71A9FFFF000000FF65D5F0FF65D5F0FF65D5
      F0FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFB1EBD0FFB1EBD0FFB1EB
      D0FF000000FF6BCC4EFF6BCC4EFF6BCC4EFF000000FFEBAF5EFFEBAF5EFFEBAF
      5EFF000000FF000000FF000000FF000000FF000000FFB1EBD0FFB1EBD0FFB1EB
      D0FF000000FF6BCC4EFF6BCC4EFF6BCC4EFF000000FFEBAF5EFFEBAF5EFFEBAF
      5EFF000000FF000000FF000000FF000000FF000000FFB1EBD0FFB1EBD0FFB1EB
      D0FF000000FF6BCC4EFF6BCC4EFF6BCC4EFF000000FFEBAF5EFFEBAF5EFFEBAF
      5EFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFAF7856FFAF7856FFAF78
      56FF000000FFDD9AD9FFDD9AD9FFDD9AD9FF000000FFB075FFFFB075FFFFB075
      FFFF000000FF000000FF000000FF000000FF000000FFAF7856FFAF7856FFAF78
      56FF000000FFDD9AD9FFDD9AD9FFDD9AD9FF000000FFB075FFFFB075FFFFB075
      FFFF000000FF000000FF000000FF000000FF000000FFAF7856FFAF7856FFAF78
      56FF000000FFDD9AD9FFDD9AD9FFDD9AD9FF000000FFB075FFFFB075FFFFB075
      FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF292929FF7B7B7BFF9D9D9DFF9D9D
      9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D
      9DFF888888FF303030FF000000FF000000FF848484FFC7CDCDFFDBE4E4FFDBE4
      E4FFDBE5E5FFDCE5E5FFDCE5E5FFDDE6E6FFDDE6E6FFDEE7E7FFDFE8E8FFE0E8
      E8FFCDD3D3FF8C8C8CFF000000FF000000FF909090FFD6DFDFFFC3C5C5FFC0C0
      C0FFC0C0C0FFC2C2C2FFC3C3C3FFC4C4C4FFC5C5C5FFC8C8C8FFC9C9C9FFCDCD
      CDFFE0E8E8FF989898FF000000FF000000FF909090FFD7DFDFFFC7C9C9FFC2C2
      C2FFC4C4C4FFC5C5C5FFC8C8C8FFC9C9C9FFCACACAFF41A571FF2F9E63FFD0D1
      D1FFE3EAEAFF989898FF000000FF000000FF909090FFD9E1E1FFCBCCCCFFC7C7
      C7FFC8C8C8FFCACACAFFCBCBCBFFCDCDCDFFCECECEFF3BA26AFF58B280FF2697
      55FFE5EBEBFF989898FF000000FF000000FF909090FFDBE2E2FFCDCFCFFFCBCB
      CBFFCCCCCCFF3BA46DFF37A36DFF33A167FF309D61FF53AE7AFF90CBA9FF4DAA
      72FF188F46FF979898FF000000FF9D9D9DFFBABDBDFFE6ECECFFE6EDEDFFE7ED
      EDFFE8EEEEFF35A269FF95CEAFFF93CDACFF90CBA9FF8FCBA7FF72BB8FFF89C7
      A0FF44A466FF098735FF9C9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D
      9DFF9D9D9DFF2F9E61FF93CDACFF6DB98DFF69B788FF64B584FF5FB27EFF65B4
      81FF82C197FF3A9F5AFF037E26FF000000FF000000FF000000FF000000FF0000
      00FF000000FF279A59FF8FCAA8FF8CC8A4FF89C5A0FF87C49DFF68B584FF81C1
      96FF46A464FF00681AFF000300FF000000FF000000FF000000FF000000FF0000
      00FF000000FF1F954FFF198F47FF138D41FF0E8939FF389E5CFF7EC095FF44A2
      60FF006519FF000200FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF007826FF41A05DFF0062
      17FF000301FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF00711CFF02791CFF0002
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF303030FF888888FF9D9D9DFF9D9D
      9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D
      9DFF7B7B7BFF292929FF000000FF000000FF8C8C8CFFCDD3D3FFE0E8E8FFDFE8
      E8FFDEE7E7FFDDE6E6FFDDE6E6FFDCE5E5FFDCE5E5FFDBE5E5FFDBE4E4FFDBE4
      E4FFC7CDCDFF848484FF000000FF000000FF989898FFE0E8E8FFCDCDCDFFC9C9
      C9FFC8C8C8FFC5C5C5FFC4C4C4FFC3C3C3FFC2C2C2FFC0C0C0FFC0C0C0FFC3C5
      C5FFD6DFDFFF909090FF000000FF000000FF989898FFE3EAEAFFD0D1D1FF2F9E
      63FF41A571FFCACACAFFC9C9C9FFC8C8C8FFC5C5C5FFC4C4C4FFC2C2C2FFC7C9
      C9FFD7DFDFFF909090FF000000FF000000FF989898FFE5EBEBFF269755FF58B2
      80FF3BA26AFFCECECEFFCDCDCDFFCBCBCBFFCACACAFFC8C8C8FFC7C7C7FFCBCC
      CCFFD9E1E1FF909090FF000000FF000000FF979898FF188F46FF4DAA72FF90CB
      A9FF53AE7AFF309D61FF33A167FF37A36DFF3BA46DFFCCCCCCFFCBCBCBFFCDCF
      CFFFDBE2E2FF909090FF000000FF9C9D9DFF098735FF44A466FF89C7A0FF72BB
      8FFF8FCBA7FF90CBA9FF93CDACFF95CEAFFF35A269FFE8EEEEFFE7EDEDFFE6ED
      EDFFE6ECECFFBABDBDFF9D9D9DFF037E26FF3A9F5AFF82C197FF65B481FF5FB2
      7EFF64B584FF69B788FF6DB98DFF93CDACFF2F9E61FF9D9D9DFF9D9D9DFF9D9D
      9DFF9D9D9DFF9D9D9DFF9D9D9DFF000300FF00681AFF46A464FF81C196FF68B5
      84FF87C49DFF89C5A0FF8CC8A4FF8FCAA8FF279A59FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000200FF006519FF44A260FF7EC0
      95FF389E5CFF0E8939FF138D41FF198F47FF1F954FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000301FF006217FF41A0
      5DFF007826FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000200FF0279
      1CFF00711CFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFADEDEFFFADE
      DEFFF9DDDDFFF9DDDDFFF9DDDDFFF8DCDCFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFADEDEFFFADE
      DEFFF9DDDDFFF9DDDDFFF9DDDDFFF8DCDCFF000000FFF7DBDBFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFADEDEFFFADE
      DEFFF9DDDDFFF9DDDDFFF9DDDDFFF8DCDCFFF7DBDBFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFADEDEFFFADE
      DEFFF9DDDDFFF9DDDDFF5B4D4AFFE2E0DFFFF7DBDBFFF7DBDBFFF6DADAFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFADEDEFFFADE
      DEFFF9DDDDFFF9DDDDFF746866FFA49C9BFFDFDCDCFFF7DBDBFFF6DADAFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFADEDEFFFADE
      DEFFF9DDDDFFF9DDDDFF867A78FFEAE8E8FFA19997FFE5E3E2FFF6DADAFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFADEDEFFFADE
      DEFFF9DDDDFFF9DDDDFF867A78FFFFFFFFFFF1F0EFFF988F8EFFE6E4E4FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFADEDEFFFADE
      DEFFF9DDDDFFF9DDDDFF867A78FFFFFFFFFFFEFEFEFFEFEEEEFF9C9493FFDDDB
      DAFF000000FF000000FF000000FF000000FF000000FF000000FFFADEDEFFFADE
      DEFFF9DDDDFFF9DDDDFF867A78FFFEFEFEFFFBFBFBFFF6F6F6FFDEDDDDFF9F98
      96FFDEDBDBFF000000FF000000FF000000FF000000FF000000FFFADEDEFFFADE
      DEFFF9DDDDFFF9DDDDFF857A78FFFBFBFBFFF6F6F6FFF1F1F1FFE3E3E2FFCDCB
      CBFF8B8280FF000000FF000000FF000000FF000000FF000000FFFADEDEFFFADE
      DEFFF9DDDDFFF9DDDDFF837876FFF4F3F3FFACA5A4FFDBDADAFF706462FF9D95
      93FFA69E9DFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF7D7271FFA29B9AFFA19A98FF958C8BFFA19A99FFC8C3
      C2FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF6C5F5DFFB2ACABFF000000FF8D8382FFBDBABAFF8F85
      84FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD6D2D2FF867C7BFFA9A3
      A1FF000000FF000000FF000000FF000000FF000000FF302413FFAE8548FFEABB
      80FFE8B675FFE6B16BFFE4AF66FFD4A158FFC99853FFB68B4CFFB4894AFFA57C
      44FF94713DFF41321BFF040301FF000000FF000000FF5E4726FFEABF8BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9F4FFFBF3EAFFF8EBD9FFF8E6D3FFF5DF
      C5FFE9CBA5FFCE9B56FF513D21FF000000FF000000FF70542EFFEBC599FFFFFF
      FFFFFCEFE2FFFDF0E7FFFDF1EBFFFDF5EEFFFDF8F1FFFDFAF7FFFFFCFAFFFFFF
      FFFFFEFBF7FFF4DABFFFC89552FF000000FF000000FF7A5A31FFEBCAA4FFFFFD
      FBFFFDE9D5FFFDEBD8FFFDEADBFFFDEDDFFFFDF0E2FFFDF1E4FFFCF0E4FFFFFF
      FFFFE09F6EFFFFFBF9FFDFB786FF000000FF000000FF856235FFEDD0B1FFFFF6
      F0FFFAE1CAFFFBE3CCFFFBE3D0FFFBE6D3FFFBE9D5FFFCE9D8FFFCEADBFFFFFF
      FDFFD29C6FFFEED9C0FFBA894BFF000000FF000000FF946C3AFFF0D9C0FFFBED
      E1FFF9DABFFFF9DCC1FFF9DEC4FFFAE0C7FFFAE2CAFFFAE2CDFFFAE5D0FFFFFE
      FDFFCB8E58FFBF8B4CFF362815FF000000FF000000FFA67941FFF5E7D8FFFAE5
      D2FFF9DABBFFF9DBBBFFFADBBEFFFADDC0FFFADDC0FFB9B8B7FFB3B3B3FFFFFD
      FBFFC89355FF0D0A04FF000000FF000000FF000000FFB78447FFFCF6F0FFF9DF
      C7FFF9DCBCFFFADCBEFFDECEBFFFBCBBBAFFECD5BFFFBFBFBFFFBDBDBDFFE9E7
      E6FFA9A39CFF656363FF000000FF000000FF060502FFB88449FFFEFBF7FFF9DC
      C0FFF8DCBEFFF8DCBEFFB9B9B9FFDADADAFFBEBEBEFFD6D6D6FFD8D8D8FFB7B7
      B7FFD4D4D4FF878787FF050505FF000000FF150D07FFB88550FFFEFCF9FFF9DC
      BEFFF8DBBEFFF8DCBFFFD5C7BAFFD2D2D2FFAAAAAAFF808080FF898989FFB3B3
      B3FFCACACAFF5A5A5AFF000000FF000000FF1B110AFFB68554FFFEFEFDFFFADE
      C1FFFADCBEFFB3B3B3FFCACACAFFE8E8E8FF858585FFFADCC2FFFDEBDEFF9898
      97FFE2E2E2FFB5B5B5FF868686FF0D0805FF6D4928FFD5AD8BFFFDF0E5FFF7C7
      A1FFF7CFACFFA4A4A4FFB6B6B6FFE1E1E1FF9B9B9BFFFAE4CCFFFDF5ECFF9997
      96FFD5D5D5FF989898FF636363FF362313FF976335FFB38457FFD9A479FFD89D
      6DFFD79A68FFD49666FFB8987EFFC9C9C9FFBCBCBCFF9A9795FF999897FFB4B4
      B4FFC1C1C1FF414141FF060606FF52341BFFC7A384FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFEFCFF9F9F9FFFC9C9C9FFA4A4A4FFCACACAFFC1C1C1FFA0A0
      A0FFC3C3C3FF6B6B6BFF000000FF3C2513FFB78F6BFFD6B9A2FFDFC5B2FFE7D4
      C2FFEEDFD3FFF5EAE2FFB3B1AFFF676767FFD8D7D6FFA1A1A1FF8A8A8AFFA189
      75FF5B5B5BFF3F3F3FFF000000FF0B0603FF4A2E18FF5B391EFF663F22FF7146
      25FF7A4C28FF84522CFF8C572EFF945F37FF99673FFF707070FF5A5A5AFF7A4C
      28FF1D1109FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF41A571FF2F9E63FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF3BA26AFF58B280FF269755FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3BA4
      6DFF37A36DFF33A167FF309D61FF53AE7AFF90CBA9FF4DAA72FF188F46FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF35A2
      69FF95CEAFFF93CDACFF90CBA9FF8FCBA7FF72BB8FFF89C7A0FF44A466FF0987
      35FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2F9E
      61FF93CDACFF6DB98DFF69B788FF64B584FF5FB27EFF65B481FF82C197FF3A9F
      5AFF037E26FF000000FF000000FF000000FF000000FF000000FF000000FF279A
      59FF8FCAA8FF8CC8A4FF89C5A0FF87C49DFF68B584FF81C196FF46A464FF0068
      1AFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1F95
      4FFF198F47FF138D41FF0E8939FF389E5CFF7EC095FF44A260FF006519FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF007826FF41A05DFF006217FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF00711CFF02791CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF2F9E63FF41A571FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF269755FF58B280FF3BA26AFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF188F
      46FF4DAA72FF90CBA9FF53AE7AFF309D61FF33A167FF37A36DFF3BA46DFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF098735FF44A4
      66FF89C7A0FF72BB8FFF8FCBA7FF90CBA9FF93CDACFF95CEAFFF35A269FF0000
      00FF000000FF000000FF000000FF000000FF000000FF037E26FF3A9F5AFF82C1
      97FF65B481FF5FB27EFF64B584FF69B788FF6DB98DFF93CDACFF2F9E61FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF00681AFF46A4
      64FF81C196FF68B584FF87C49DFF89C5A0FF8CC8A4FF8FCAA8FF279A59FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0065
      19FF44A260FF7EC095FF389E5CFF0E8939FF138D41FF198F47FF1F954FFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF006217FF41A05DFF007826FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF02791CFF00711CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2F9E
      63FF41A571FF000000FF000000FF000000FF000000FF41A571FF2F9E63FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF269755FF58B2
      80FF3BA26AFF000000FF000000FF000000FF000000FF3BA26AFF58B280FF2697
      55FF000000FF000000FF000000FF000000FF000000FF188F46FF4DAA72FF90CB
      A9FF53AE7AFF309D61FF33A167FF37A36DFF3BA46DFF53AE7AFF90CBA9FF4DAA
      72FF188F46FF000000FF000000FF000000FF098735FF44A466FF89C7A0FF72BB
      8FFF8FCBA7FF90CBA9FF93CDACFF95CEAFFF91CCAAFF8FCAA7FF72BB8FFF89C7
      A0FF44A466FF098735FF000000FF037E26FF3A9F5AFF82C197FF65B481FF5FB2
      7EFF64B584FF69B788FF6DB98CFF6BB88BFF6CBA8DFF65B585FF5FB27EFF65B4
      81FF82C197FF3A9F5AFF037E26FF000000FF00681AFF46A464FF81C196FF68B5
      84FF87C49DFF89C5A0FF8CC8A4FF8FCAA8FF8CC8A3FF87C39EFF68B584FF81C1
      96FF46A464FF00681AFF000000FF000000FF000000FF006519FF44A260FF7EC0
      95FF389E5CFF0E8A39FF138E41FF188F46FF1E954EFF389E5CFF7EC095FF44A2
      60FF006519FF000000FF000000FF000000FF000000FF000000FF006217FF41A0
      5DFF007826FF000000FF000000FF000000FF000000FF007826FF41A05DFF0062
      17FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0279
      1CFF00711CFF000000FF000000FF000000FF000000FF00711CFF02791CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF365989FF56A8
      EEFF3693ECFF2A6EE6FF3960C7FF3B4668FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF242836FF3682F4FF40A9
      FAFF3490F6FF2968EEFF284CDEFF4552CFFF294A3EFF0F1513FF000000FF0000
      00FF000000FF141915FF28302CFF000000FF000000FF233A69FF3B91F7FF3EA8
      FAFF3085F5FF285FEAFF2844DAFF7E89CFFF449474FF46A777FF489973FF4B8B
      70FF449973FF52BE81FF63746EFF000000FF000000FF446EBCFF3E9DF8FF3BA1
      F9FF2D78F3FF2858E6FF273CD5FF8EACBEFF3B8D66FF41AD76FF46C187FF4BC5
      93FF49C289FF4DAB76FF898989FF000000FF18191BFF4386F3FF3FA6F9FF3796
      F7FF296DF0FF2850E1FF3A49D1FF7DB09FFF3D9469FF42B67AFF47C28BFF4BC6
      93FF48C083FF70AD8CFF474646FF000000FF27334EFF5C92E3FF8EB0D9FFA4AF
      C7FF8DA3D2FF4B6DD7FF525CB8FF559E82FF3F9D6EFF44BD81FF48C48EFF4BC5
      91FF48BF7CFF9AB4A7FF000000FF000000FF5E4B2EFFD9B389FFE5BE92FFD8A2
      60FFC58540FFAC7E5CFF7D8284FF3D8D6CFF40A873FF45C185FF4AC592FF4AC3
      8CFF47B275FF949696FF000000FF000000FFD29F57FFE0B481FFE3B886FFD49A
      52FFBD783AFFA85933FF728B9BFF70A5B8FF86B9A3FF66B995FF69BA9BFF7DB7
      A0FF9FBCB8FF474646FF000000FF342E25FFCD9241FFE6BE90FFDEAF77FFCE92
      47FFB76F37FFAE6F55FF5DA3CCFF2B97D1FF26C5F4FF4CBDDBFF66D5F2FF1ECF
      F9FF54A3BFFF303030FF000000FF5A421AFFD59E5CFFE7C094FFDAA768FFC888
      3FFFB16533FFB19186FF338EC6FF27A2DAFF12C8FAFF39D4FEFF30D5FEFF02CB
      FBFF93A9B4FF000000FF000000FFA07638FFDDAD76FFE4BB8CFFD59E59FFC17D
      3BFFAB5C31FF97AAB6FF308AC5FF20ADE3FF18CEFEFF41D6FEFF1BD4FFFF18BB
      E9FF8A8B8BFF000000FF000000FFC6986AFFC9AD9EFFB3A09BFF836D65FFBF95
      7BFFAA6447FF5C96B5FF2E92CCFF17B9EEFF25D0FEFF42D6FEFF0AD1FEFF50BA
      DCFF474645FF000000FF000000FF161616FF000000FF000000FF000000FF0000
      00FF464342FF4C91B5FF299DD5FF12C4F7FF32D3FFFF39D6FEFF05CAFAFF90BE
      D0FF151514FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF161616FF4D6672FF78C2DAFF76C4DDFF85C2D8FF96ADB8FF7575
      75FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF050503FF413937FF493E38FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF4E423CFF685449FF3D332EFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF1E1815FF7E6B61FF75665FFF090808FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF050505FF010101FF1E1A19FF4C4642FF100F0FFF060606FF050505FF0000
      00FF000000FF000000FF000000FF000000FF000000FF050503FF433B38FF7268
      64FF776D69FF514945FF211B18FF392E2BFF695B57FF6F625CFF62544EFF3A2C
      27FF070504FF000000FF000000FF000000FF030202FF584C49FF999390FF9A95
      92FF99928FFF97908CFF968E8AFF928A86FF8C827DFF857872FF80726BFF7460
      57FF1F1815FF000000FF000000FF000000FF221917FF908782FF97908CFF938A
      87FF908782FF8D837DFF897E78FF847872FF80736CFF7B6D67FF816E64FF4138
      34FF000000FF000000FF000000FF000000FF443631FF8E8480FF8C827CFF887D
      77FF857972FF82756EFF7E716BFF7B6E68FF786B64FF71625AFF6F5C52FF0808
      08FF000000FF000000FF000000FF000000FF4B3830FF847871FF82756FFF7D71
      6AFF7B6D67FF786A63FF756760FF72645CFF706058FF6D5D54FF5B4A42FF0000
      00FF000000FF000000FF000000FF000000FF4C362CFF75675FFF74645CFF7363
      5BFF73635BFF73635CFF73635CFF74645DFF75655DFF73635BFF68544AFF1110
      10FF000000FF000000FF000000FF000000FF402F25FF675449FF76655CFF7B6A
      62FF7D6B64FF7B6B64FF7B6A63FF7B6B64FF7E6D66FF806D66FF76635AFF4B41
      3AFF010101FF000000FF000000FF000000FF30251FFF6A5449FF816E65FF8B78
      6FFF8D7A72FF8B7970FF8A786FFF8B7970FF8E7C73FF907E75FF8D7970FF806C
      62FF453228FF000000FF000000FF000000FF0B0A09FF6D584CFF8A766BFF9A88
      7DFF9F8E84FF9E8D84FF9D8C82FF9D8C83FFA08E85FFA18F86FF9D8B81FF9583
      79FF513A31FF000000FF000000FF000000FF000000FF3F3631FF8C7569FFA491
      85FFAF9C92FFB09F95FFAE9C92FFAD9A91FFAD9B91FFAE9A91FFA9968BFF9580
      73FF211C18FF000000FF000000FF000000FF000000FF030101FF645249FFA18B
      7EFFB3A49AFFB1A49BFFA3928AFFA09087FFAC9B93FFB19F96FF9F8B81FF594D
      47FF000000FF000000FF000000FF000000FF000000FF000000FF080706FF5044
      3EFF81736CFF685F5BFF423E3CFF3C3835FF574E49FF756862FF564F4BFF0707
      05FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF010101FF030202FF030101FF0E0C0CFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF030303FF030101FF030101FF191818FF060606FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF201E1EFF3D3C3CFF444444FF4A4A4AFF030101FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF373636FF316577FF3A7180FF5E6264FF030101FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF092938FF0EB9E7FF1BCAEBFF0E7698FF0A0808FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF323535FF559BB6FF559DBEFFB7BFC3FF1D1C1CFF040303FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0101
      01FFAAABABFFE5E7E8FFF1F3F3FFFCFEFEFF505050FF040101FF010101FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0F0E
      0EFFE1E2E2FFF5F7F7FFFAFCFCFFEAEBEBFF989898FF0A0808FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF040404FF7575
      75FFFBFDFDFFFAFCFCFFFBFDFDFFFBFDFDFFF5F7F7FF3D3D3DFF090808FF0303
      03FF000000FF000000FF000000FF000000FF000000FF000000FF0E0D0DFFD2D4
      D4FFFBFDFDFFF5F7F7FFFBFDFDFFFBFDFDFFFBFDFDFF616060FF0B0909FF0101
      01FF000000FF000000FF000000FF000000FF000000FF010101FF13181BFFF2F4
      F4FFFBFDFDFFF4F6F6FFFBFDFDFFFBFDFDFFFBFDFDFF686868FF0D0B0BFF0302
      02FF000000FF000000FF000000FF000000FF10242BFF1A627BFF0DACDFFF748A
      91FFF8FAFAFFF6F8F8FFFBFDFDFFFBFDFDFFB6E5F5FF155365FF060506FF1954
      62FF000000FF000000FF000000FF000000FF1B90BAFF0BBCF3FF0BBEF5FF0B84
      A7FF585757FFFBFDFDFFFBFDFDFFFBFDFDFF90C3D8FF0993C8FF0985B5FF16AD
      DCFF0C161AFF000000FF000000FF000000FF1485AEFF0BBDF5FF0BBEF5FF0CBE
      F3FF6297A7FFFBFDFDFFFBFDFDFFD8DADAFF2D6177FF0BBAF2FF0BBDF4FF0BBE
      F5FF1D96BEFF000000FF000000FF000000FF1D91BEFF0AAAE4FF0BB7EFFF0BBC
      F4FF0F7BA8FF4E4E4EFF464646FF0B0809FF053D58FF0BB8F0FF0CB3EBFF1878
      9AFF07171CFF000000FF000000FF000000FF020303FF0E1D24FF0E3950FF0A5C
      84FF072F46FF000000FF000000FF000000FF051E2AFF0C6591FF113D51FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF020100FF846000FFC68507FF5F4700FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF6C5200FFFCAD3AFFFCD3AEFFEA9C19FF423500FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF624900FFFAA423FFFCAD76FFFCAF4EFFFCC251FFECB319FF4A3E
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFA87400FFFCB781FFFC9744FFFCAE6CFFFCB14CFFFC9C49FFE5AC
      05FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF805E00FFFCAC57FFFC8728FFFC8E35FFFC7E19FFFC7B0DFFE0BF
      05FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3124
      00FFC58607FFD88F11FFFC8619FFFC7000FFFC7B13FFFC7B0DFFE4BD00FF423C
      00FF000000FF000000FF000000FF000000FF000000FF000000FF594100FFC68D
      00FFFCB76EFFFC7408FFFC6E00FFDBA000FFD6AE00FFDBB200FF3F3900FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFCA8B0BFFFCB9
      78FFFC7700FFFC7300FFDC9D02FF423A00FF0B0B00FF0B0B00FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFC48308FFFC99
      4EFFFC7400FFDA9C02FF413700FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF755600FFD79A
      0BFFC99604FF403500FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFF0000
      00FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF462E21FFD3A886FFDCA679FFDCA578FFDAA3
      78FFD8A177FFD59F74FFD49D73FFD29C71FFCF9970FFCE986EFFCB956DFFC993
      6AFFBA9273FF462E21FF000000FFDBA983FFE8B891FFE8B891FFE8B891FFE8B8
      91FFE8B891FFE8B891FFE8B891FFE8B891FFE8B891FFE8B891FFE8B891FFE8B8
      91FFE8B891FFBE8E6CFF000000FFDCA679FFDCA679FFDCA679FFDCA679FFDCA6
      79FFDCA679FFDCA679FFDCA679FFDCA679FFDCA679FFDCA679FFDCA679FFDCA6
      79FFDCA679FFBF8A64FF000000FFDBA378FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFBC8661FF000000FFD9A277FFF5F5F5FFF5F5F4FFF4F5F4FFF4F4
      F4FFF5F5F4FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FF93BCCCFF56A4
      D8FF84B0DBFF449CD0FF0F374DFFD8A177FFF2F2F2FFD28256FFD28256FFD282
      56FFF2F2F3FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFB0E6F5FF75BDE7FFB3D2
      F0FFE5F3FFFFABD2EFFF407DB5FFD59F74FFF1F1F0FFF1F0F1FFF0F1F1FFF1F0
      F1FFF1F1F1FFC2C2C2FFFFFFFFFFFFFFFFFFB4E6F5FF80D6EEFFB1E3F9FF8ABF
      E7FFADD3F6FFC3E0FCFF6199CCFFD49D73FFEFEEEEFFEFEFEFFFEFEEEEFFEFEE
      EEFFEEEFEEFFEEEEEEFFEEEFEFFFB4DEEBFF7BD4EEFFC3F6FDFF6ADDF6FF6BCA
      EDFF61A2D7FF6198C9FF0C161DFFD19B71FFECECECFFECECEBFFECECEBFFECEC
      ECFFECEBECFFC2C2C2FF94BCCAFF77D3EEFFC7F7FDFF5DDCF5FF59E2F7FF78D6
      F2FF4E9FE0FF9B7C6CFF000000FFCC966DFFE9E9E9FFD28256FFD28256FFD282
      56FFE9E9E9FF88ADBEFF75CBE7FFC7F7FDFF5CDCF5FF58E1F7FF79D4F1FF4A99
      DEFFC3D7E7FFAB7352FF000000FFCA936CFFE7E7E7FFE8E7E7FFE7E7E7FFE7E7
      E7FFA3C5D7FF73B7D6FFC1F6FDFF61DFF7FF5BE2F8FF77D3F0FF4898DCFFE6F1
      FAFFE7E7E7FFA97151FF000000FFC8916AFFE6E5E5FFE5E5E5FFE5E5E6FF96B4
      C9FF78B5D5FF8FB6D1FF53C9E4FF59DFF5FF76D0EDFF4D9ADBFFCFD9E3FFE5E6
      E6FFE6E5E6FFA8704FFF000000FF6E4934FFC28D66FFBF8A64FFBD8762FF4188
      A9FFE0F2FFFF5299D8FF1878BDFF4797C4FF3E80B5FF987769FFAA7352FFA871
      51FFA86F4FFF6E4934FF000000FF000000FF000000FF000000FF000000FF2962
      80FF93C7F9FF90C9F9FF3F84C9FF195DA1FF071521FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1039
      51FF265C84FF4685B9FF316A8EFF050F18FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF462E21FFD3A886FFDCA679FFDCA578FFDAA3
      78FFD8A177FFD59F74FFD49D73FFD29C71FFCF9970FFCE986EFFCB956DFFC993
      6AFFBA9273FF462E21FF000000FFDBA983FFE8B891FFE8B891FFE8B891FFE8B8
      91FFE8B891FFE8B891FFE8B891FFE8B891FFE8B891FFE8B891FFE8B891FFE8B8
      91FFE8B891FFBE8E6CFF000000FFDCA679FFDCA679FFDCA679FFDCA679FFDCA6
      79FFDCA679FFDCA679FFDCA679FFDCA679FFDCA679FFDCA679FFDCA679FFDCA6
      79FFDCA679FFBF8A64FF000000FFDBA378FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFBC8661FF000000FFD9A277FFF5F5F5FFF5F5F4FFF4F5F4FFF4F4
      F4FFF5F5F4FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2
      C2FFF4F4F5FFB9845EFF000000FFD8A177FFF2F2F2FFD28256FFD28256FFD282
      56FFF2F2F3FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3F3F3FFB6805CFF000000FFD59F74FFF1F1F0FFF1F0F1FFF0F1F1FFF1F0
      F1FFF1F1F1FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FFB47C5AFF000000FFD49D73FFEFEEEEFFEFEFEFFFEFEEEEFFEFEE
      EEFFEEEFEEFFEEEEEEFFEEEFEFFFEEEEEEFFEEEEEEFFEEEEEEFFEFEEEEFFEEEE
      EEFFEEEEEFFFB17A58FF000000FFD19B71FFECECECFFECECEBFFECECEBFFECEC
      ECFFECEBECFFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FF8EAB99FF5B9570FF4D8D
      64FF47885EFF6F774FFF000000FFCC966DFFE9E9E9FFD28256FFD28256FFD282
      56FFE9E9E9FFC2C2C2FFFFFFFFFFFFFFFFFFA7C7B2FF5FAA80FF94D4B3FFB9E6
      D0FF68BA8EFF2B8E55FF0D391EFFCA936CFFE7E7E7FFE8E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFC2C2C2FFFFFFFFFFFFFFFFFF488A60FF8FD3B0FF91D6B0FFFFFF
      FFFF63BB8BFF65BB8EFF176634FFC8916AFFE6E5E5FFE5E5E5FFE5E5E6FFE5E5
      E5FFE5E5E5FFE6E5E5FFE5E5E5FFE6E5E5FF2F794AFF9BD4B5FFFFFFFFFFFFFF
      FFFFFFFFFFFF94D2B1FF176935FF6E4934FFC28D66FFBF8A64FFBD8762FFBA84
      5FFFB8825DFFB37C5AFFB17A58FFB07956FF1E6A38FF60B98AFF5EB986FFFFFF
      FFFF5EB886FF65BB8EFF176634FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0B361BFF268B51FF62B98CFF94D2
      B1FF62B98CFF268B51FF0D391EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C381CFF166433FF1769
      35FF166433FF0C381CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF462E21FFD3A886FFDCA679FFDCA578FFDAA3
      78FFD8A177FFD59F74FFD49D73FFD29C71FFCF9970FFCE986EFFCB956DFFC993
      6AFFBA9273FF462E21FF000000FFDBA983FFE8B891FFE8B891FFE8B891FFE8B8
      91FFE8B891FFE8B891FFE8B891FFE8B891FFE8B891FFE8B891FFE8B891FFE8B8
      91FFE8B891FFBE8E6CFF000000FFDCA679FFDCA679FFDCA679FFDCA679FFDCA6
      79FFDCA679FFDCA679FFDCA679FFDCA679FFDCA679FFDCA679FFDCA679FFDCA6
      79FFDCA679FFBF8A64FF000000FFDBA378FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFBC8661FF000000FFD9A277FFF5F5F5FFF5F5F4FFF4F5F4FFF4F4
      F4FFF5F5F4FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2
      C2FFF4F4F5FFB9845EFF000000FFD8A177FFF2F2F2FFD28256FFD28256FFD282
      56FFF2F2F3FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3F3F3FFB6805CFF000000FFD59F74FFF1F1F0FFF1F0F1FFF0F1F1FFF1F0
      F1FFF1F1F1FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FFB47C5AFF000000FFD49D73FFEFEEEEFFEFEFEFFFEFEEEEFFEFEE
      EEFFEEEFEEFFEEEEEEFFEEEFEFFFEEEEEEFFEEEEEEFFEEEEEEFFEFEEEEFFEEEE
      EEFFEEEEEFFFB17A58FF000000FFD19B71FFECECECFFECECEBFFECECEBFFECEC
      ECFFECEBECFFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FF7390C2FF2159BFFF0441
      BBFF1B56BEFF5D5F85FF000000FFCC966DFFE9E9E9FFD28256FFD28256FFD282
      56FFE9E9E9FFC2C2C2FFFFFFFFFFFFFFFFFF95B0E3FF3B74D2FF8CB4F7FFB7D6
      FEFF70A7F5FF2C69CAFF021C4FFFCA936CFFE7E7E7FFE8E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFC2C2C2FFFFFFFFFFFFFFFFFF235BC1FF8CB4F6FF4B91FFFF1075
      FFFF1F85FFFF3E89EBFF023AA0FFC8916AFFE6E5E5FFE5E5E5FFE5E5E6FFE5E5
      E5FFE5E5E5FFE6E5E5FFE5E5E5FFE6E5E5FF0441BBFFADCDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF167DEFFF0340BAFF6E4934FFC28D66FFBF8A64FFBD8762FFBA84
      5FFFB8825DFFB37C5AFFB17A58FFB07956FF1449ADFF619CF4FF167DFFFF0074
      F8FF0074EEFF0266E1FF023CA5FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0D2B61FF2361C6FF1F75E6FF0477
      EAFF0062DDFF034ABAFF002058FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0D275CFF023AA1FF0340
      BAFF023DA4FF002058FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF292929FF7B7B7BFF9D9D9DFF9D9D
      9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D
      9DFF888888FF303030FF000000FF000000FF848484FFC7CDCDFFDBE4E4FFDBE4
      E4FFDBE5E5FFDCE5E5FFDCE5E5FFDDE6E6FFDDE6E6FFDEE7E7FFDFE8E8FFE0E8
      E8FFCDD3D3FF8C8C8CFF000000FF000000FF909090FFD6DFDFFFC3C5C5FFC0C0
      C0FFC0C0C0FFC2C2C2FFC3C3C3FFC4C4C4FFC5C5C5FFC8C8C8FFC9C9C9FFCDCD
      CDFFE0E8E8FF989898FF000000FF000000FF909090FFD7DFDFFFC7C9C9FFC2C2
      C2FFC4C4C4FFC5C5C5FFC8C8C8FFC9C9C9FFCACACAFFCCCCCCFFCDCDCDFFD0D1
      D1FFE3EAEAFF989898FF000000FF000000FF909090FFD9E1E1FFCBCCCCFFC7C7
      C7FFC8C8C8FFCACACAFFCBCBCBFFCDCDCDFFCECECEFFD0D0D0FFD1D1D1FFD3D4
      D4FFE5EBEBFF989898FF000000FF000000FF909090FFDBE2E2FFCDCFCFFFCBCB
      CBFFCCCCCCFFCECECEFFCFCFCFFFD0D0D0FFD2D2D2FF97B3A1FF5C9671FF4D8D
      64FF47885EFF648870FF000000FF9D9D9DFFBABDBDFFE6ECECFFE6EDEDFFE7ED
      EDFFE8EEEEFFE9EFEFFFE9EFEFFFEAEFEFFF9CBEABFF5FAA80FF94D4B3FFB9E6
      D0FF68BA8EFF2B8E55FF538163FF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D
      9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF45875DFF8FD3B0FF91D6B0FFFFFF
      FFFF63BB8BFF65BB8EFF1B6B38FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF2F794AFF9BD4B5FFFFFFFFFFFFFF
      FFFFFFFFFFFF94D2B1FF176935FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF196736FF60B98AFF5EB986FFFFFF
      FFFF5EB886FF65BB8EFF176634FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0B361BFF268B51FF62B98CFF94D2
      B1FF62B98CFF268B51FF0D391EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C381CFF166433FF1769
      35FF166433FF0C381CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF292929FF7B7B7BFF9D9D9DFF9D9D
      9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D
      9DFF888888FF303030FF000000FF000000FF848484FFC7CDCDFFDBE4E4FFDBE4
      E4FFDBE5E5FFDCE5E5FFDCE5E5FFDDE6E6FFDDE6E6FFDEE7E7FFDFE8E8FFE0E8
      E8FFCDD3D3FF8C8C8CFF000000FF000000FF909090FFD6DFDFFFC3C5C5FFC0C0
      C0FFC0C0C0FFC2C2C2FFC3C3C3FFC4C4C4FFC5C5C5FFC8C8C8FFC9C9C9FFCDCD
      CDFFE0E8E8FF989898FF000000FF000000FF909090FFD7DFDFFFC7C9C9FFC2C2
      C2FFC4C4C4FFC5C5C5FFC8C8C8FFC9C9C9FFCACACAFFCCCCCCFFCDCDCDFFD0D1
      D1FFE3EAEAFF989898FF000000FF000000FF909090FFD9E1E1FFCBCCCCFFC7C7
      C7FFC8C8C8FFCACACAFFCBCBCBFFCDCDCDFFCECECEFFD0D0D0FFD1D1D1FFD3D4
      D4FFE5EBEBFF989898FF000000FF000000FF909090FFDBE2E2FFCDCFCFFFCBCB
      CBFFCCCCCCFFCECECEFFCFCFCFFFD0D0D0FFD2D2D2FF7C98CCFF235BC1FF0441
      BBFF1B56BEFF516FA7FF000000FF9D9D9DFFBABDBDFFE6ECECFFE6EDEDFFE7ED
      EDFFE8EEEEFFE9EFEFFFE9EFEFFFEAEFEFFF8AA8DBFF3A74D2FF8CB4F7FFB7D6
      FEFF70A7F5FF2D6ACBFF5A75A9FF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D
      9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF164EB4FF8CB4F6FF4B91FFFF1075
      FFFF1F85FFFF3E89EBFF154EB5FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0340BAFFADCDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF167DEFFF0340BAFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF023DA4FF619CF4FF167DFFFF0074
      F8FF0074EEFF0266E1FF023CA5FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0D2B61FF2361C6FF1F75E6FF0477
      EAFF0062DDFF034ABAFF002058FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0D275CFF023AA1FF0340
      BAFF023DA4FF002058FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7F7F
      7FFFC6C6C6FFC3C3C3FFBFBFBFFFBABABAFFB5B5B5FFAFAFAFFF6E6E6EFF0000
      00FF000000FF000000FF000000FF000000FF000000FF0C0C0CFF888888FFDCDC
      DCFFE6E3E3FFE1DEDCFFDFDCDCFFDFDCDBFFDEDBDBFFEEECECFFA4A4A4FF0000
      00FF000000FF000000FF000000FF000000FF393939FFB6B6B6FFDFDFDFFFEAEA
      EAFFCFCAC9FFCBC5C4FFCAC3C2FFC8C2C0FFC7C0C0FFDCD9D8FF9D9D9DFF0000
      00FF000000FF000000FF000000FF000000FFCBCBCBFFE9E9E9FFE9E9E9FFE2E1
      E1FFCBC5C3FF979696FF959494FF939292FF919090FFDBD7D6FF979797FF0000
      00FF000000FF000000FF000000FF000000FFC5C5C5FFEFEFEFFFE1E1E1FFDDDD
      DDFFC8C2C1FFC8C1C0FFC5C0BEFFC4BEBDFFC2BCBAFFDAD6D5FF709AA9FF56A4
      D8FF84B0DBFF449CD0FF0F374DFF000000FFBFBFBFFFECECECFFE0E0E0FFDDDC
      DCFFC7C0BFFF919090FF8E8E8EFF8C8C8CFF898989FF97CAD9FF75BDE7FFB3D2
      F0FFE5F3FFFFABD2EFFF407DB5FF000000FFBABABAFFECECECFFDFDFDFFFDAD9
      D9FFC5BEBDFFC3BDBBFFC2BBBAFFC0BAB8FF8AB7C5FF7ED5EDFFB1E3F9FF8ABF
      E7FFADD3F6FFC3E0FCFF6199CCFF000000FFB4B4B4FFECECECFFDEDEDEFFD9D8
      D8FFC2BCBAFFC1BAB9FFC0B9B8FF7BC2B5FF7AD4EDFFC3F6FDFF6ADDF6FF6BCA
      EDFF61A2D7FF548FC2FF0C161DFF000000FFAEAEAEFFEBEBEBFFDDDDDDFFD7D5
      D5FFC0BAB8FFBFB8B7FF90B4C0FF77D3EEFFC7F7FDFF5DDCF5FF59E2F7FF78D6
      F2FF398ACBFF0C1A27FF000000FF000000FFA7A7A7FFEAEAEAFFDDDDDDFFD5D4
      D3FFBFB8B6FF85A5B5FF75CBE7FFC7F7FDFF5CDCF5FF58E1F7FF79D4F1FF3D8C
      D0FF0A1C2CFF000000FF000000FF000000FFA1A1A1FFF0F0F0FFE0E0E0FFD4D2
      D2FF87A4B4FF73B7D5FFC1F6FDFF61DFF7FF5BE2F8FF77D3F0FF4293D7FF0711
      1BFF000000FF000000FF000000FF000000FF797979FFB2B2B2FFD4D4D4FF94B0
      C4FF78B5D5FF8FB6D1FF53C9E4FF59DFF5FF76D0EDFF4C98D9FF606B75FF0000
      00FF000000FF000000FF000000FF000000FF000000FF2A2A2AFF6E6E6EFF4188
      A9FFE0F2FFFF5299D8FF1878BDFF4797C4FF4289C1FFC9D5E2FF626262FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2A62
      80FF93C7F9FF90C9F9FF3F84C9FF1E62A6FF5A6874FF616161FF4F4F4FFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1039
      51FF265C84FF4685B9FF316A8EFF050F18FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE4B18BFFE2AE87FFE0AB83FFDDA87EFFDCA4
      7BFFAC805FFF000000FF000000FF000000FF000000FF000000FF765E50FFD4AB
      8FFFEDBF9EFFEBBD9CFFEBBB99FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFD69E72FF000000FF000000FF000000FF000000FF000000FFE4B89AFFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FF81C588FF7CC283FF78C07EFF74BD7AFFFBF7
      F4FFD49A6DFF000000FF000000FF000000FF000000FF000000FFECBE9DFFFBF7
      F4FF9BD5A4FF97D3A0FF93D09CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7
      F4FFD19668FF000000FF000000FF000000FF000000FF000000FFEBBC9AFFFBF7
      F4FFFFFFFFFFFFFFFFFFFFFFFFFFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFFBF7
      F4FFCE9262FF000000FF000000FF000000FF1A371DFF4BA053FF45984DFF4F99
      56FFE9C2A5FFE9C2A5FFE9C2A5FFE8C7ABFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1
      EBFFCB8E5DFF000000FF000000FF19361CFF499C51FF79BC80FF80C186FF488F
      4EFFE9C2A5FFFFFFFFFFE8C3A8FFE8C7ABFFE9C9AFFFE8C8AFFFE8CCB4FFF2E7
      DEFFC88957FF000000FF18351BFF47994FFF72B778FF4E9A55FF35823CFF4185
      45FFE9C5A9FFE9C5ABFFEAC7ABFFE8C7ABFFFFFFFFFFFFFFFFFFFFFFFFFFF1E5
      DBFFC58553FF1B381DFF45974DFF6DB474FF398640FF0E2410FFE3B08BFFFAF6
      F1FFEAC9ADFFFFFFFFFFEAC9AFFFE8C7ABFFE8C7ABFFE8C8AFFFE8C8ADFF5EAB
      65FF499D51FF5AA661FF69B16FFF37843EFF0D210FFF000000FFE1AD86FFFAF4
      F0FFEACBB1FFEACCB2FFEACCB2FFEACFB9FFFBF6F2FFFFFFFFFFFFFFFFFF58A1
      5DFF78BE7EFF65AF6BFF35813CFF0C200FFF000000FF000000FFDFA981FFF9F3
      EFFFEACEB6FFFFFFFFFFEBD0BAFFEACDB4FFEACDB4FFEACDB4FFEACDB4FF5198
      56FF398740FF337E3AFF0C200DFF000000FF000000FF000000FFDDA77CFFF9F3
      EFFFEBD0B9FFEBD0BAFFEBD0BAFFEAC7ACFFFFFFFFFFFFFFFFFFFFFFFFFFF0E2
      D8FFC58B5DFF000000FF000000FF000000FF000000FF000000FFD9A378FFF9F3
      EEFFEBD2BDFFFFFFFFFFEBD3BEFFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2
      D8FFC2885AFF000000FF000000FF000000FF000000FF000000FFD7A073FFF8F2
      EDFFF7F0EAFFF6EDE6FFF4EAE2FFC28350FFC28350FFC28350FFC28350FFC283
      50FF7F502CFF000000FF000000FF000000FF000000FF000000FFA37856FFCA91
      67FFD19566FFCE9161FFCB8D5CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF4E4E4EFF959595FF929292FF4A4A4AFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF212121FF0A0A
      0AFF020202FFB6B6B6FFE5E5E5FFE4E4E4FF9E9E9EFF010101FF0A0A0AFF1C1C
      1CFF000000FF000000FF000000FF000000FF000000FF7F7F7FFFCCCCCCFFB7B7
      B7FF131313FFAFAFAFFFDEDEDEFFDDDDDDFFA1A1A1FF101010FF9C9C9CFFA6A6
      A6FF636363FF000000FF000000FF000000FF636363FFDCDCDCFFEDEDEDFFDBDB
      DBFFB9B9B9FFBDBDBDFFD6D6D6FFD4D4D4FFAFAFAFFFA4A4A4FFCBCBCBFFE7E7
      E7FFB7B7B7FF434343FF000000FF000000FF636363FFC3C3C3FFDCDCDCFFD4D4
      D4FFD9D9D9FFDBDBDBFFD6D6D6FFD4D4D4FFD9D9D9FFD2D2D2FFCBCBCBFFC8C8
      C8FF787878FF363636FF000000FF000000FF000000FF666666FFD4D4D4FFCCCC
      CCFFC9C9C9FFBABABAFF9C9C9CFFA1A1A1FFC2C2C2FFC6C6C6FFC1C1C1FFB7B7
      B7FF474747FF000000FF000000FFA0A0A0FFADADADFFB3B3B3FFD8D8D8FFCDCD
      CDFFBCBCBCFF656565FF1F1F1FFF222222FF6F6F6FFFC3C3C3FFC2C2C2FFCDCD
      CDFF838383FF787878FF696969FFC2C2C2FFE9E9E9FFD6D6D6FFC9C9C9FFCECE
      CEFFA5A5A5FF232323FF000000FF000000FF292929FFACACACFFC4C4C4FFBABA
      BAFFC6C6C6FFDDDDDDFF696969FFBEBEBEFFE2E2E2FFD2D2D2FFC6C6C6FFCDCD
      CDFFB1B1B1FF272727FF000000FF000000FF282828FFA8A8A8FFC2C2C2FFB7B7
      B7FFC0C0C0FFD2D2D2FF5F5F5FFF838383FF7F7F7FFF959595FFCFCFCFFFC6C6
      C6FFCCCCCCFF7A7A7AFF292929FF272727FF6F6F6FFFC1C1C1FFBCBCBCFFB9B9
      B9FF5C5C5CFF4E4E4EFF424242FF000000FF000000FF5A5A5AFFC5C5C5FFC1C1
      C1FFC5C5C5FFC7C7C7FFAAAAAAFFA7A7A7FFC1C1C1FFBEBEBEFFB5B5B5FFAAAA
      AAFF363636FF000000FF000000FF000000FF535353FFA5A5A5FFD5D5D5FFC5C5
      C5FFCBCBCBFFD1D1D1FFC9C9C9FFC7C7C7FFCCCCCCFFC5C5C5FFBDBDBDFFCBCB
      CBFF6D6D6DFF313131FF000000FF000000FF4F4F4FFFBCBCBCFFDEDEDEFFA6A6
      A6FF7D7D7DFF848484FFC4C4C4FFC2C2C2FF6C6C6CFF686868FFA6A6A6FFD2D2
      D2FF808080FF272727FF000000FF000000FF000000FF4E4E4EFF6D6D6DFF5A5A
      5AFF0B0B0BFF777777FFCBCBCBFFC7C7C7FF585858FF080808FF4F4F4FFF4D4D
      4DFF2B2B2BFF000000FF000000FF000000FF000000FF000000FF111111FF0505
      05FF010101FF767676FFBDBDBDFFB2B2B2FF545454FF010101FF040404FF0C0C
      0CFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF292929FF414141FF3C3C3CFF1F1F1FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF38743DFF0104
      01FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF102313FF45964CFF397F
      40FF000000FF000000FF000000FF58B464FF58B464FF58B464FF56B162FF54AE
      60FF3F8448FF142A17FF2E5F33FF428B4BFF4A9F53FF56A55EFF71B779FF5DA7
      65FF2F6F36FF000000FF000000FF58B464FFB9E3C1FFB8E3C0FFB7E2BFFFB6E1
      BDFF90CB98FF63AE6CFF5FAC68FF88C990FF8FCF98FF8DCC94FF8ACB91FF86C9
      8EFF559E5CFF275F2BFF000000FF57B363FFB8E3BFFFB6E2BEFFB5E1BDFFB3E0
      BBFFB2DFB9FF99CFA2FF4E9C57FF8DCD95FF8BCB93FF88CA8FFF85C88CFF82C5
      89FF519957FF245D28FF000000FF55AF61FF53AC5EFF50A85BFF53A65DFF79BB
      83FFA6D7AEFFACDCB3FF539B5BFF6AB071FF519D59FF38853FFF539C59FF4F98
      56FF246029FF000000FF000000FF000000FF000000FF000000FF030703FF254E
      2AFF71B279FFA9DAB0FF77B580FF398340FF0F2713FF000000FF2E6F34FF2664
      2AFF000000FF000000FF000000FF000000FF000000FF000000FF030703FF2450
      29FF418D4AFF9FD3A6FFA1D4A7FF34773BFF0E210FFF000000FF28652EFF2053
      24FF000000FF000000FF000000FF51A85AFF4DA356FF499E52FF489A51FF61AC
      69FF539B5BFF7AB582FF9FD4A5FF7BB683FF4C8A51FF28652DFF528D58FF5089
      54FF19451BFF000000FF000000FF4CA255FF8DCC94FF8ACB91FF86C98EFF83C7
      8AFF6FB375FF4B8D52FF9BD2A1FF97CF9DFF97CF9CFF95CE9AFF92CC97FF90CC
      95FF49814DFF123A15FF000000FF489C50FF88CA8FFF85C88CFF82C589FF7EC3
      86FF61A967FF34773AFF5B9760FF84BD8AFF93CE98FF91CC96FF8FCB93FF8DCA
      91FF467C49FF103411FF000000FF43954BFF3F9047FF3B8A42FF37843EFF337E
      39FF255E29FF0B1D0DFF153618FF1D4E21FF1F5623FF346B38FF619B65FF457B
      49FF103612FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF051005FF154518FF1039
      12FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0D300FFF0001
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF765E50FFD4AB8FFFEDBF9EFFEBBD9CFFEBBB
      99FFE9B995FFE7B692FFE6B48FFFE4B18BFFE2AE87FFE0AB83FFDDA87EFFDCA4
      7BFFAC805FFF000000FF000000FFDBB193FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFD19B6FFF000000FF000000FFECBE9DFFFBF7F4FF9BD5A4FF97D3A0FF93D0
      9CFF8FCE97FF8ACB92FF86C98DFF81C588FF7CC283FF78C07EFF74BD7AFFFBF7
      F4FFD49A6DFF000000FF000000FFEBBC9AFFFBF7F4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7
      F4FFD19668FF000000FF000000FFE9B997FFFBF7F4FFE9C2A5FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFDDBFA9FFB6B2B0FFD4BBA8FFFBF7
      F4FFCE9262FF000000FF000000FFE7B693FFFBF7F4FFE9C2A5FFFFFFFFFFE8C3
      A8FFFEFEFEFFF2F2F2FFF2F2F2FFDDC2ADFFB5B5B5FFE1E1E1FFB2B2B2FFE1DC
      D8FFC2916AFF1E1E1EFF090909FFE5B38EFFFAF6F2FFE9C5A9FFE9C5ABFFEAC7
      ABFFD6C1B2FFC5C5C5FFC2C2C2FFC1C1C1FFDFDFDFFFFBFBFBFFDFDFDFFFB8B8
      B8FFADADADFFA9A9A9FF6B6B6BFFE3B08BFFFAF6F1FFEAC9ADFFFFFFFFFFEAC9
      AFFFBBBBBBFFF2F2F2FFFCFCFCFFFAFAFAFFF8F8F8FFF6F6F6FFF5F5F5FFF5F5
      F5FFF5F5F5FFF9F9F9FF8B8B8BFFE1AD86FFFAF4F0FFEACBB1FFEACCB2FFEACC
      B2FFB2B2B2FFFCFCFCFFF8F8F8FFF6F6F6FFF5F5F5FFF3F3F3FFF2F2F2FFF0F0
      F0FFEFEFEFFFF4F4F4FF858585FFDFA981FFF9F3EFFFEACEB6FFFFFFFFFFEBD0
      BAFFAEAEAEFFFAFAFAFFF5F5F5FFF4F4F4FFF2F2F2FFF1F1F1FFEFEFEFFFEEEE
      EEFFECECECFFF3F3F3FF808080FFDDA77CFFF9F3EFFFEBD0B9FFEBD0BAFFEBD0
      BAFFAFACAAFFF3F3F3FFF3F3F3FFF2F2F2FFF0F0F0FFEFEFEFFFEDEDEDFFEBEB
      EBFFEAEAEAFFF1F1F1FF797979FFD9A378FFF9F3EEFFEBD2BDFFFFFFFFFFEBD3
      BEFFB1B1B1FFEBEBEBFFF2F2F2FFEFEFEFFFEEEEEEFFECECECFFEBEBEBFFE9E9
      E9FFE8E8E8FFF0F0F0FF747474FFD7A073FFF8F2EDFFF7F0EAFFF6EDE6FFF4EA
      E2FFA9A7A6FFEEEEEEFFF4F4F4FFF1F1F1FFEDEDEDFFEBEBEBFFEBEBEBFFEDED
      EDFFEDEDEDFFF4F4F4FF6F6F6FFFA37856FFCA9167FFD19566FFCE9161FFCB8D
      5CFFA99382FFBABABAFFB8B8B8FFB5B5B5FFDDDDDDFFEFEFEFFFD0D0D0FF9E9E
      9EFF939393FF8F8F8FFF404040FF000000FF000000FF000000FF000000FF0000
      00FF0E0E0EFF363636FF343434FF333333FF9F9F9FFFD0D0D0FF9B9B9BFF2121
      21FF191919FF181818FF070707FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF1F1F1FFF757575FF1F1F1FFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE9E9E9FFF9F9F9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF8F8F8FF545454FF0000
      00FF000000FF000000FF000000FF000000FF000000FFF9F9F9FFF4F4F4FFF5F5
      F5FFF5F5F5FFF5F5F5FFF1F1F1FFEFEFEFFFE9E9E9FFFCFCFCFFE7E7E7FF5454
      54FF010F13FF167696FF0A485FFF000000FF000000FFFCFCFCFFF7F7F7FFF9F9
      F9FFF7F7F7FFF7F7F7FFF3F3F3FFF0F0F0FFEAEAEAFFFCFCFCFFF6F6F6FFDDEB
      EFFF72B8D0FFA9E0EEFF1481ADFF000000FF000000FFFCFCFCFFF9F9F9FFF9F9
      F9FFF9F9F9FFF7F7F7FFF6F6F6FFF2F2F2FFEBEBEBFFFCFCFCFFE1F1F6FF80C6
      DEFFBDE7F2FF61CDE7FF1682B3FF000000FF000000FFFCFCFCFFFBFBFBFFFCFC
      FCFFFCFCFCFFFBFBFBFFF8F8F8FFF5F5F5FFF1F1F1FFD1E2E7FF7BC4DCFFBDE7
      F3FF70DBF0FF1682B2FF062231FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFF8F8F8FFD9EAEFFF7CC4DDFFBEE8F3FF7DE8
      F8FF3DACD1FF0B364EFF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFD9EDF3FF7CC5DDFFBEE8F3FF7DE8F8FF3FAE
      D2FF6EACCBFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFD7ECF3FF7AC4DCFFBEE9F3FF7DE8F8FF43B3D5FF4A96
      BEFFF8F9FAFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFBFB
      FBFFF9F9FAFFD6EBF2FF7AC4DCFFBFE9F4FF7DE8F8FF4ABBDAFF338AB7FFE9EF
      F2FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFF7F8F8FFCFD8
      DAFFA8B9BEFF279DC3FF92DAECFF7DE8F8FF55C6E2FF217EB1FFD8E4ECFFF8F8
      F8FFFCFCFCFF000000FF000000FF000000FF010101FFF4F5F5FFB6C3C7FFA1AE
      B4FF9BACB2FF7BA5B4FF198BB9FF4EBEDDFF3197C1FFC0D5E3FFFAFAFAFFFAFA
      FAFFFCFCFCFF000000FF000000FF000000FF0F0F0DFFC2BEA9FFA99E91FFCDD2
      CFFFD3F2FCFFC0E5F2FF80ABBCFF2180B1FFA3C3D9FFFBFBFBFFFBFBFBFFFBFB
      FBFFFCFCFCFF000000FF000000FF040402FF454237FFA49580FFD4BA96FFB9A0
      85FFB48A64FFAC9278FFB1A79AFFE5EDF2FFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFAFAFAFF000000FF000000FF706655FFAF9B80FFC6A986FFD6AF89FFC99D
      78FFD58C5AFFAB7957FFECE8E5FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFAFA
      FAFFEDEDEDFF000000FF000000FF9B846BFF977B61FF937358FF906B50FF8C65
      4AFF6E4D38FF2E241DFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE9E9E9FFF9F9F9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF8F8F8FF545454FF0000
      00FF000000FF000000FF000000FF000000FF000000FFF9F9F9FFF4F4F4FFF5F5
      F5FFF5F5F5FFF5F5F5FFF1F1F1FFEFEFEFFFE9E9E9FFFCFCFCFFE7E7E7FF5454
      54FF000000FF000000FF000000FF000000FF000000FFFCFCFCFFF7F7F7FFF9F9
      F9FFF7F7F7FFF7F7F7FFF3F3F3FFF0F0F0FFEAEAEAFFFCFCFCFFF6F6F6FFF4F4
      F4FF565656FF000000FF000000FF000000FF000000FFFCFCFCFFF9F9F9FFBFBF
      BFFFB9B9B9FFB3B3B3FFAEAEAEFFA9A9A9FFA4A4A4FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFBFBFBFFFCFC
      FCFFFCFCFCFFFBFBFBFFF8F8F8FFF5F5F5FFF1F1F1FFECECECFFEAEAEAFFE6E6
      E6FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFC7C7
      C7FFC1C1C1FFBDBDBDFFB7B7B7FFB3B3B3FFB0B0B0FFADADADFFABABABFFEDED
      EDFFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFF35007DFF35007DFFFBFBFBFFF8F8F8FFF6F6F6FFF3F3F3FFF2F2
      F2FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFCECE
      CEFF35007DFFC5C5C5FFC2C2C2FF35007DFFBCBCBCFFBBBBBBFFB9B9B9FFF6F6
      F6FFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFF35007DFFFCFCFCFFFCFCFCFF35007DFFFBFBFBFF35007DFFF9F9F9FF3500
      7DFFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFD6D6
      D6FF35007DFFCFCFCFFFCDCDCDFF35007DFFC8C8C8FF35007DFFC5C5C5FF3500
      7DFFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFFCFC
      FCFF35007DFFFBFBFBFFFBFBFBFF35007DFFFAFAFAFFFAFAFAFF35007DFFFAFA
      FAFFFCFCFCFF000000FF000000FF000000FF000000FFFCFCFCFFFCFCFCFFDDDD
      DDFF35007DFFD9D9D9FFD7D7D7FF35007DFFD4D4D4FF35007DFFD4D4D4FF3500
      7DFFFCFCFCFF000000FF000000FF000000FF000000FFFBFBFBFFFCFCFCFFFCFC
      FCFFFCFCFCFF35007DFF35007DFFFCFCFCFFFCFCFCFF35007DFFFCFCFCFF3500
      7DFFFAFAFAFF000000FF000000FF000000FF000000FFEFEFEFFFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFAFA
      FAFFEDEDEDFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF897E
      73FFBBAFA3FF9C9084FF000000FFAD9F92FF9C9084FF544E47FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7D73
      68FFC2B7ADFF635B53FF000000FF7A7066FFA79A8DFF8A7F74FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF726960FFA39689FF9488
      7BFF9E9185FF3C3732FF000000FF4A443EFF7C7268FF84786EFF3C3732FF2D29
      24FF020200FF000000FF000000FF060505FF26221FFF9A8D81FF9C9084FF8579
      6FFF544D46FF4E4842FF7E746AFF6C645BFF816A56FFA5907BFF938372FF544D
      46FF060404FF000000FF000000FF030202FF9A8D82FFB9ADA1FF81756BFF8175
      6BFFA99079FFB9A693FFB2A08AFFAF9680FF9E8C7BFF826B59FF6F6155FF9488
      7BFF040402FF000000FF000000FF030303FF9C9084FFB0A295FF7D7369FF7A70
      66FF756B62FF6A6159FF2C2824FF544D46FF7E746AFF7A7066FF41A571FF2F9E
      63FF000000FF000000FF000000FF010101FF58514AFF403B36FF564F48FF3B36
      31FF312D29FF1F1B19FF030303FF151310FF181614FF23201EFF3BA26AFF58B2
      80FF269755FF000000FF000000FF000000FF433D39FF9E9185FFCCC2B9FFBFB3
      A9FFA5978AFF282422FF3BA46DFF37A36DFF33A167FF309D61FF53AE7AFF90CB
      A9FF4DAA72FF188F46FF000000FF000000FF504943FF82766DFFCCC2B9FF776E
      64FF6F665DFF2C2925FF35A269FF95CEAFFF93CDACFF90CBA9FF8FCBA7FF72BB
      8FFF89C7A0FF44A466FF098735FF000000FF4B453FFF82766DFFCCC2B9FF766D
      63FF796F65FF2C2825FF2F9E61FF93CDACFF6DB98DFF69B788FF64B584FF5FB2
      7EFF65B481FF82C197FF3A9F5AFF000000FF443F39FF84786EFFC2B7ADFF7A70
      66FF7D7369FF34302BFF279A59FF8FCAA8FF8CC8A4FF89C5A0FF87C49DFF68B5
      84FF81C196FF46A464FF00681AFF000000FF3C3732FF37322EFF312D29FF2A27
      23FF25221FFF1E1B19FF1F954FFF188E46FF128C40FF0D8838FF389E5CFF7EC0
      95FF44A260FF006519FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF007826FF41A0
      5DFF006217FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF00711CFF0279
      1CFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFD98A50FFA9734AFF000000FF000000FF0000
      00FF7A5941FFDEA27AFF000000FF000000FFDEA27AFF7A5941FF000000FF0000
      00FF000000FFA9734AFFD98A50FFD27937FFA3673CFF000000FF000000FF7C54
      35FFEFC8ACFFE6A575FF000000FF000000FFE6A575FFEFC8ACFF7C5435FF0000
      00FF000000FFA3673CFFD27937FFCF722AFFA16232FF000000FF85542FFFE5A5
      78FFEFC8AAFFE29F6EFF000000FF000000FFE29F6EFFEFC8AAFFE5A578FF8554
      2FFF000000FFA16232FFCF722AFFCD691CFF9D5A29FF854D23FFDF9C67FFEABD
      9DFFEDC3A4FFE19A63FF000000FF000000FFE19A63FFEDC3A4FFEABD9DFFDF9C
      67FF854D23FF9D5A29FFCD691CFFC86018FFC96D27FFDF9C6CFFE8B691FFE6B0
      88FFEBBF9DFFDF915AFF000000FF000000FFDF915AFFEBBF9DFFE6B088FFE8B6
      91FFDF9C6CFFC96D27FFC86018FFC55716FFBD611AFFDD9864FFE5B18AFFE3AA
      81FFE9BA97FFD98A50FF000000FF000000FFD98A50FFE9BA97FFE3AA81FFE5B1
      8AFFDD9864FFBD611AFFC55716FFBF5015FF974812FF874110FFD68649FFE4B0
      88FFE8B590FFD88343FF000000FF000000FFD88343FFE8B590FFE4B088FFD686
      49FF874110FF974812FFBF5015FFBC4814FF944111FF000000FF833E11FFD684
      44FFE5B089FFD27937FF000000FF000000FFD27937FFE5B089FFD68444FF833E
      11FF000000FF944111FFBC4814FFBA3F12FF8F3C0FFF000000FF000000FF7D39
      0FFFE3AB82FFCF722AFF000000FF000000FFCF722AFFE3AB82FF7D390FFF0000
      00FF000000FF8F3C0FFFBA3F12FFB53711FF8B2F0EFF000000FF000000FF0000
      00FF74320DFFC86018FF000000FF000000FFC86018FF74320DFF000000FF0000
      00FF000000FF8B2F0EFFB53711FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0808
      08FF525252FF747474FF7D7D7DFF7A7A7AFF6C6C6CFF4A4A4AFF070707FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF1F1F1FFF8C8C
      8CFFBBBBBBFFCACACAFFCCCCCCFFCACACAFFC1C1C1FFACACACFF797979FF1A1A
      1AFF000000FF000000FF000000FF000000FF000000FF080808FF898989FFC3C3
      C3FFBDBDBDFFA0A0A0FF959595FF929292FF969696FFADADADFFADADADFF7171
      71FF050505FF000000FF000000FF000000FF000000FF494949FFB9B9B9FFBEBE
      BEFF838383FF121212FF030303FF030303FF111111FF787878FFA7A7A7FF9D9D
      9DFF383838FF000000FF000000FF000000FF000000FF6A6A6AFFC3C3C3FFA0A0
      A0FF171717FF000000FF000000FF000000FF000000FF151515FF888888FFA8A8
      A8FF515151FF000000FF000000FF000000FF000000FF747474FFC5C5C5FF9393
      93FF040404FF000000FF000000FF000000FF000000FF040404FF7B7B7BFFAAAA
      AAFF585858FF000000FF000000FF000000FF5FC2E1FF879FA7FF909090FF8D8D
      8DFF58B8DCFF53B7DFFF4FB4DEFF4BB0DDFF47ACDCFF44A7D7FF767676FF7474
      74FF637C8CFF2F98D8FF000000FF000000FF5EC1E1FFC9F3FCFFCBF3FDFFD4F6
      FEFFD7F6FFFFD8F4FFFFE0F8FFFFDFF8FFFFDAF5FFFFCDF1FCFFC1EDFAFFBCEB
      FAFFBCEBFAFF2992D6FF000000FF000000FF5ABEE0FFC8F3FCFF73DFF9FF88E6
      FDFF94E7FFFF99E5FFFFA9EEFFFFA7EDFFFF98E3FFFF72D5F9FF57CCF3FF4DC8
      F1FFBAE9FAFF228CD5FF000000FF000000FF56BADFFFC7F1FCFF6DDCF9FF54BA
      EDFF5FBCEFFF9AE7FFFF33A5E2FF49A3E1FF8FE2FFFF47ACE9FF36A3E3FF47C3
      F0FFB7E8F9FF1C87D4FF000000FF000000FF51B6DEFFC5F0FCFF68D9F8FF7AE2
      FDFF8FE8FFFF98E9FFFF309EDFFF528AB1FF89E2FFFF68D0F9FF4EC4F1FF44C0
      F0FFB5E7F9FF1682D3FF000000FF000000FF4CB1DDFFC2EFFBFF63D6F8FF4AB5
      ECFF58BCEFFF94EBFFFF2E96DDFF4B81AAFF83E1FFFF3FA8E9FF309EE1FF40BD
      EFFFB3E5F9FF127CD2FF000000FF000000FF47ACDCFFC0EEFBFF5DD3F7FF6ADB
      FCFF7DE5FFFF8EEDFFFF96F2FFFF92EDFFFF7ADFFFFF59CCF8FF44BDEFFF3AB9
      EEFFB2E3F9FF0D77D1FF000000FF000000FF41A7DBFFBEECFBFF57CFF5FF3FAF
      ECFF4CB9EFFF58C1EFFF5EC5EFFF5AC3EFFF4AB5EFFF35A4E6FF2899E1FF36B7
      EEFFB0E3F8FF0873D0FF000000FF000000FF3BA2DAFFBBEBFAFFBBEBFCFFBEEE
      FEFFC5F4FFFFCEF8FFFFD3FAFFFFD0F8FFFFC7F2FFFFB9E9FCFFB2E4F9FFAFE2
      F8FFAFE2F8FF046FCFFF000000FF000000FF349CD9FF2F98D8FF2A93D7FF268F
      D6FF218BD5FF1C87D4FF1883D3FF137ED2FF107AD1FF0D77D1FF0974D0FF0671
      CFFF036ECFFF006CCEFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFEAA575FFE8A372FFE89F6CFFE69C69FFE49863FFE2945CFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFE89F6EFFF2C8ABFFF0C5A7FFF0C4A5FFEFC1A1FFE18D51FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFE69A65FFF0C4A5FFECB590FFEBB28BFFEEBB9AFFDF8445FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFE2915AFFEEC09FFFEAB088FFE9AD84FFEDB693FFDB7A38FF000000FF0000
      00FF000000FF000000FF000000FF7276FEFF7276FEFF7074FEFF6C6FFDFF686A
      FCFFE18C50FFEDBA98FFE9AB80FFE7A77AFFEAB28CFFD8722AFF000000FF0000
      00FF000000FF000000FF000000FF7276FEFFB7BAFEFFB5B8FEFFB2B5FEFFAFB2
      FEFFDF8343FFECB691FFE6A476FFE6A171FFE9AC84FFD6691CFF000000FF0000
      00FF000000FF000000FF000000FF6E71FDFFB3B6FEFF8084FEFF7A80FEFFABAE
      FEFFD97937FFEAB189FFE49E6CFFE39B68FFE7A77BFFD16018FF000000FF0000
      00FF000000FF000000FF000000FF686AFCFFAFB2FEFF777CFEFF7377FEFFA7A9
      FEFFD87228FFE8AC82FFE29763FFE1945EFFE5A274FFCF5516FF5EBB6AFF5AB5
      65FF55AF5FFF50A75AFF4BA053FF6162FAFFABAEFEFF7074FEFF6B6FFEFFA1A3
      FEFFD6671CFFE7A679FFE0915AFFDF8E54FFE49D6CFFCD4C14FFB9D9B4FFB6D6
      B0FFB2D3ADFFADD1A8FF43954BFF5959F8FFA7A9FEFF696DFEFF6367FEFF9D9F
      FEFFD15E18FFE5A172FFDE8B51FFDD884BFFE29864FFC94313FFB4D5AFFF89BC
      82FF82B77BFFA6CDA2FF3B8A42FF514FF6FFA1A3FEFF6064FEFF5B5FFEFF989A
      FEFFCF5316FFE39B6AFFDC8548FFDB8242FFE0935CFFC53A12FFAED1AAFF7EB6
      78FF77B171FF9FC89BFF337E3AFF4845F5FF9D9FFEFF595CFEFF5457FEFF9496
      FEFFCD4A14FFE19661FFDA7E3FFFD97B39FFDF8E56FFC53311FFA7CDA3FF75AF
      6FFF6EAA68FF99C395FF2C7431FF3F3BF3FF989AFEFF9597FEFF9294FEFF9092
      FEFFC94113FFE0925BFFDF8E57FFDF8C53FFDE894FFFBF2C10FFA1C99DFF9CC5
      98FF97C294FF93BF90FF256B2AFF86427EFF823D7CFF7D367BFF7A317AFF772C
      79FFC53812FFC53511FFC32F11FFBF2C10FFBF280FFFBE250EFF7A4D23FF7848
      1FFF75441CFF734019FF713D17FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF020202FF948271FFDDC1
      A5FFF4D4B5FFF2D1B1FFD7B89BFF8C7865FF020201FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF020201FFBCA58EFFF9E2CDFFFAEC
      DEFFF9EEE2FFF9EDE2FFF8E9DAFFF0D5BCFFAE9077FF020101FF000000FF0000
      00FF000000FF000000FF000000FF000000FF94826EFFF8E2CCFFFAEEE3FFF7E7
      D6FFF6E2CEFFF6E1CBFFF6E3D0FFF9EADDFFECCFB4FF846B56FF000000FF0000
      00FF000000FF000000FF000000FF000000FFDBBFA4FFF9EBDEFFF7E7D6FFF6E1
      CCFFF5E0CAFFF5DEC8FFF5DDC4FFF6E1CBFFF5E2D0FFC39C7CFF000000FF0000
      00FF000000FF000000FF000000FF000000FFF2D1B1FFF9EDE1FFF6E1CCFFF5DF
      C9FFF5DEC7FFF4DCC3FFF4DBC1FFF4DABFFFF8E7D6FFD5A884FF000000FF0000
      00FF000000FF000000FF000000FF000000FFEECCABFFF9ECDFFFF5DFC8FFF5DD
      C5FFF4DCC2FFF4DAC0FFF3D9BDFFF3D7BCFFF8E6D3FFD1A37CFF000000FF0000
      00FF000000FF000000FF000000FF000000FFD2B294FFF7E7D7FFF6E1CCFFF4DB
      C1FFF4DABFFFF3D8BCFFF3D7BAFFF4DBC1FFF3DEC9FFB98F6EFF000000FF0000
      00FF000000FF000000FF000000FF000000FF88735EFFEDD0B6FFF8E8D9FFF5DE
      C8FFF3D8BCFFF3D6BAFFF4DBC1FFF7E4D2FFDFBA9CFF978E8CFF0A141DFF0000
      00FF000000FF000000FF000000FF000000FF020101FFA88A70FFE8C9ADFFF5E1
      CDFFF7E5D3FFF7E5D1FFF3DDC8FFDFB99BFFC7A790FF85ADD5FF3A71A6FF0811
      1BFF000000FF000000FF000000FF000000FF000000FF020101FF7F6651FFBF96
      76FFD1A37CFFCE9E78FFB78A68FF8C7F77FF73A1CCFFAACBE8FF74A3CEFF2B65
      9AFF050F18FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF010304FF275076FF6296C4FF9CC0E4FF6498
      C7FF1B5B90FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF010304FF1B486FFF538CBBFF88B4
      DDFF165D96FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF010104FF124168FF2065
      9CFF082F4CFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000002FF0208
      0FFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0808
      08FF525252FF747474FF7D7D7DFF7A7A7AFF6C6C6CFF4A4A4AFF070707FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF1F1F1FFF8C8C
      8CFFBBBBBBFFCACACAFFCCCCCCFFCACACAFFC1C1C1FFACACACFF797979FF1A1A
      1AFF000000FF000000FF000000FF000000FF000000FF080808FF898989FFC3C3
      C3FFBDBDBDFFA0A0A0FF959595FF929292FF969696FFADADADFFADADADFF7171
      71FF050505FF000000FF000000FF000000FF000000FF494949FFB9B9B9FFBEBE
      BEFF838383FF121212FF030303FF030303FF111111FF787878FFA7A7A7FF9D9D
      9DFF383838FF000000FF000000FF000000FF000000FF6A6A6AFFC3C3C3FFA0A0
      A0FF171717FF000000FF000000FF000000FF000000FF151515FF888888FFA8A8
      A8FF515151FF000000FF000000FF000000FF000000FF747474FFC5C5C5FF9393
      93FF040404FF000000FF000000FF000000FF000000FF040404FF7B7B7BFFAAAA
      AAFF585858FF000000FF000000FF000000FFE17D5FFF879FA7FF909090FF8D8D
      8DFFDC7B58FFDF7A53FFDE784FFFDD774BFFDC7647FFD77344FF767676FF7474
      74FF637C8CFFD86E2FFF000000FF000000FFE17D5EFFFCD2C9FFFDD5CBFFFEDC
      D4FFFFE0D7FFFFE3D8FFFFE7E0FFFFE6DFFFFFE4DAFFFCD8CDFFFACFC1FFFACC
      BCFFFACCBCFFD66C29FF000000FF000000FFE07B5AFFFCD1C8FFF98E73FFFD9F
      88FFFFAC94FFFFB399FFFFBAA9FFFFB9A7FFFFB498FFF99772FFF37E57FFF176
      4DFFFACCBAFFD56A22FF000000FF000000FFDF7A56FFFCD2C7FFF98B6DFFED87
      54FFEF925FFFFFB29AFFE26F33FFE18749FFFFAC8FFFE98447FFE37536FFF073
      47FFF9C9B7FFD4681CFF000000FF000000FFDE7851FFFCD2C5FFF88868FFFD96
      7AFFFFA68FFFFFAE98FFDF7030FFB17952FFFFA689FFF99268FFF17A4EFFF073
      44FFF9C8B5FFD36616FF000000FF000000FFDD774CFFFBCFC2FFF88663FFEC81
      4AFFEF8B58FFFFA894FFDD742EFFAA744BFFFFA183FFE9803FFFE17230FFEF71
      40FFF9C8B3FFD26512FF000000FF000000FFDC7647FFFBCEC0FFF7825DFFFC8C
      6AFFFF987DFFFFA08EFFFFA396FFFFA492FFFF9B7AFFF88659FFEF7544FFEE6E
      3AFFF9C9B2FFD1640DFF000000FF000000FFDB7441FFFBCEBEFFF57D57FFEC7B
      3FFFEF824CFFEF8658FFEF885EFFEF865AFFEF844AFFE67635FFE16F28FFEE6C
      36FFF8C5B0FFD06208FF000000FF000000FFDA723BFFFACBBBFFFCCDBBFFFECF
      BEFFFFD1C5FFFFD5CEFFFFD8D3FFFFD7D0FFFFD4C7FFFCCDB9FFF9C8B2FFF8C5
      AFFFF8C5AFFFCF6104FF000000FF000000FFD97034FFD86E2FFFD76D2AFFD66C
      26FFD56A21FFD4681CFFD36718FFD26513FFD16410FFD1640DFFD06209FFCF61
      06FFCF6103FFCE5F00FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF80BA85FF070A07FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7EB984FF95CD9AFF7EBD84FF070A07FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF7DB882FF93CD99FFB2E2B6FF92CB97FF75B67AFF050A
      05FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF7CB881FF93CC98FFB1E2B6FFA2DCA9FFAFE0B5FF8BC591FF6CB0
      71FF050905FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF7BB680FF92CC97FFB0E1B6FFA2DBA8FF9AD8A1FF71B375FFAEDFB3FF86C2
      8BFF63A967FF040904FF000000FF000000FF000000FF000000FF000000FF78B5
      7FFF91CB96FFB0E1B5FF84C289FF7EC084FF98D79FFF97D79EFF9ED9A4FFABDF
      B1FF7BBA80FF539957FF000000FF000000FF000000FF000000FF78B57DFF90CA
      95FFB0E0B5FFD9F3DDFFF7FCF8FFA3D0A6FF7CBF83FF9ED9A4FFABDEB1FF79BA
      7EFF539B57FF000000FF000000FF000000FF141D15FF79B77EFF8FC994FFAFE0
      B5FF84C189FFF7FCF8FF94C196FFDDEEDFFF81C186FFAADEB0FF79B97DFF569F
      5AFF57A05BFF010201FF000000FF456348FF7BBA81FF8EC893FFAFE0B5FFA1DA
      A7FF7DC084FFA3D0A6FFDDEEDFFF7EB782FFAADEB0FF78B87DFF549E58FFC3E7
      C8FF76B77AFF274F29FF000000FF79BA7EFF8DC892FFAEDFB4FFA0DAA6FF97D7
      9EFF96D69DFF7CBF82FF81C086FFAADDAFFF77B87BFF61AD65FFC3E7C8FFC0E4
      C3FFB8E0BDFF4D9951FF040A04FF4E7652FF7DBC83FF96CE9BFFACDFB2FF6DB2
      72FF95D59CFF9CD8A2FFA9DDAFFF76B77AFF70B974FFC2E7C8FFB1DAB4FF64B2
      69FF549D57FF1E411FFF0C1C0CFF0B130DFF79BA7EFF75B67AFF90CB96FFAADE
      B0FF9BD7A1FFA9DDAFFF75B67AFF5EAB63FFADD8B1FF8AC390FF356D39FF2754
      2BFF091309FF000000FF000000FF000000FF466E49FF9BCD9FFF6DB171FF8CC7
      91FFA9DCAEFF74B579FF4F9A53FF75B679FF438446FF122713FF0A170CFF0000
      00FF000000FF000000FF000000FF000000FF101B11FF79B87EFFB6DEBAFF65AB
      6AFF73B578FF4C964FFF3A703DFF244927FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF010301FF457446FF5DA462FF69AD
      6DFF49944DFF102010FF09140BFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF112012FF47814AFF182D
      19FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF232B
      30FF5C7E92FF6EA5BFFF77B3CCFF76AFC9FF6599B1FF4D6B7FFF1A2226FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4E6372FF73B4
      CDFFC8D9E3FFDDE7EAFFEEF1F1FFECF0F0FFD2E0E4FFA7C3D2FF6194AFFF3346
      52FF000000FF000000FF000000FF000000FF000000FF4B5F6DFF96CCDCFFE1EB
      EEFFEEE1D9FFDFBDABFFD5AC95FFD4A991FFDCB6A2FFE8DACEFFC5D9DFFF669A
      B5FF2C3D48FF000000FF000000FF000000FF20262BFF70AFC8FFDFE9ECFFE6CF
      C1FFDFBEADFFF1E3DCFFF3F1ECFFF4F1EBFFF1E2D9FFDCB9A2FFDEC0AEFFB6CF
      D8FF537D9CFF131A1EFF000000FF000000FF537284FFB6CFDBFFEDE0D7FFDEBC
      A9FFFFFFFFFFF0F0EEFFE7E5DAFFFFFFF7FFFFFFF7FFFFFEF3FFDCB397FFE1D1
      C3FF71A3BAFF384E61FF000000FF000000FF6192ABFFD3E1E6FFDBB8A3FFF1E3
      D6FFFEFBF5FFF5F5F3FF9E9D94FFF0F0E9FFF8F8F2FFBDB8ACFFF0DAC1FFD1A6
      8AFFA8CAD3FF476A87FF000000FF000000FF679BB6FFE4ECEEFFD1A489FFFAF6
      E9FFFDF8EEFFFFFFF9FF807E77FFB0ADA3FF807D75FFC9C5B9FFFAF0D3FFC994
      70FFC9DFE2FF4F7597FF000000FF000000FF6294B1FFDDEAECFFCF9E80FFFAF3
      E2FFFDF6E9FFF2F0E3FF8C8B83FF807D75FFD2CFC1FFFFFBEBFFFAECCCFFC78F
      6BFFC0DDE1FF4E7395FF000000FF000000FF507B96FFB6D3DDFFD1A98FFFF0DB
      C0FFFFF7E6FFFAF2E3FFC4BFB5FFF1EDDEFFFFFCE8FFFFF5DFFFEFD4AEFFC99A
      79FF91C1D0FF456683FF000000FF000000FF395263FF76A8BFFFDAD1C5FFD9A9
      87FFFFFEEBFFFFFAEEFFFFFDF2FFFFFEF2FFFFFCEFFFFFFDEBFFD9A278FFCBC5
      B8FF5693B0FF374D5FFF000000FF000000FF13191DFF527C9BFFA1CCD8FFCDB6
      A4FFD8A988FFEFDFCFFFFAF6F3FFFAF5F3FFEFDFD1FFD7A684FFC2AB97FF81BC
      CEFF496B8EFF13181EFF000000FF000000FF000000FF2D3C48FF5387A5FF95C8
      D6FFCCCABEFFC89E85FFC49174FFC38F71FFC3997EFFC2C3B8FF7BBCCDFF4575
      97FF2D3B47FF000000FF000000FF000000FF000000FF000000FF2C3B49FF4A70
      92FF5896B0FF84BCCEFFA3D6DEFF9FD5DEFF79B8CBFF4D8BAAFF486B8DFF2C3B
      48FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1319
      1FFF354B5EFF436381FF496E91FF496E91FF436381FF354B5FFF13191FFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040507FF2F445DFF4F6F97FF6089
      BAFF6A97CDFF6E9DD5FF6798D1FF5A8FC8FF4C84BBFF3B74AAFF275F91FF1546
      6EFF082740FF000304FF000000FF000000FF5578A5FF86B6E0FF94C5E6FF9CCF
      EAFFA0D3ECFF9FD1EBFF9ACAE8FF95C1E5FF8EB9E2FF86B0DDFF77A2D4FF5F8F
      C3FF3C76ADFF09416DFF000000FF000000FF6285AFFF86B6E0FF94C5E6FF9ACD
      E9FF9BCDE9FF98C7E7FF94C0E4FF8DB7E0FF88AFDDFF80A6D7FF719ACFFF5B8B
      C1FF3C76ADFF134B75FF000000FF000000FF25231FFFBFC4CDFF99B6DCFF7BA5
      D5FF6194CAFF4D86BDFF3D79B2FF2D6EA7FF21659EFF1C6197FF2A6999FF5182
      A6FF879399FF1E1B18FF000000FF000000FF000000FFB39E87FFF9E3CDFFFBF3
      ECFFFEFAF7FFFEFBF8FFFCF5EDFFF7E6D5FFF6E1CCFFF9ECDFFFF9EBDDFFEBCE
      B3FFA1836AFF000000FF000000FF000000FF000000FF000000FFA8927EFFF4D5
      B7FFF9ECE0FFFDF8F4FFFBF0E6FFF8E7D7FFF9EBDEFFF2DAC4FFE1B795FF987B
      64FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF342D
      26FFD0B399FFF3DDC9FFFAEEE2FFF9EBDEFFEDD0B5FFC19E80FF312820FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFB3967EFFF4E1CEFFF3DFCCFFAB8B71FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFB59982FFF4E3D0FFF3DFCDFFA9896FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF352D
      26FFCDB39AFFF3E2D2FFFCF4EDFFFBF1E7FFE9CCB4FFBA9474FF2F241CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFA08670FFE8C7
      AAFFF7EADEFFFEFAF7FFFEFCF9FFFDF7F2FFFAEDE2FFEBD0B6FFD0A07CFF8D6C
      51FF000000FF000000FF000000FF000000FF000000FFA88C73FFEDD3BAFFFAF0
      E5FFFDF9F5FFFEFCFAFFFEFDFCFFFDF9F4FFF6E3CFFFF7E5D3FFF6E3D1FFDDB8
      99FF916D50FF000000FF000000FF000000FF231F1BFFE6C2A4FFEFD6BFFFFBF2
      EAFFFEFCFAFFFFFEFDFFFEFDFCFFFCF6F0FFF8E8D9FFF6E3D1FFF6E2CEFFE6C8
      ACFFCE9F79FF1B1611FF000000FF000000FF5578A5FF97B8D4FFC4C7C3FFECD8
      C7FFF6EBE3FFFAF5F1FFF3E7DEFFDFBEA5FFD0A37EFFCB9972FFC8966FFFA292
      8BFF607D9BFF09416DFF000000FF000000FF5578A5FF86B6E0FF94C5E6FF9ACD
      E9FF9BCDE9FF98C7E7FF94C0E4FF8DB7E0FF88AFDDFF80A6D7FF719ACFFF5B8B
      C1FF3C76ADFF09416DFF000000FF000000FF040507FF2F445DFF4F6F97FF5984
      B5FF5689BFFF4C84BBFF3D79B2FF2D6EA7FF1F639CFF12578EFF0A4B7BFF073B
      63FF05243DFF000304FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF051205FF1D5D20FF2E9833FF2D9433FF1B561EFF041105FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF1D5D20FF96D69AFFC0E2C1FFB9DFBAFF91CC94FF184E1CFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF2E9733FFBFE1BFFF94D294FF87CC88FFA1D4A3FF257B2CFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF2C9232FFB3DCB4FF89CC8AFF82CA84FF99D09CFF22712AFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF1A531DFF90CB94FFA0D4A2FF98D09AFF8BC18FFF123B17FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF041005FF174B1CFF23762AFF216E28FF113916FF020903FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF3483BAFF3483BAFF3483BAFF3483BAFF3483
      BAFF3483BAFF3483BAFF3381B8FF327EB6FF317CB3FF2F79AFFF2D76ACFF2B73
      A8FF296FA4FF286CA0FF26699CFF3483BAFF5DB3D6FF5AB0D4FF59AFD4FF58AE
      D3FF5AADD3FF5AADD2FF5AAAD1FF59A9D0FF57A7CFFF55A3CDFF52A0CBFF519E
      C9FF519CC9FF539CC8FF246598FF3483BAFF59B0D4FF4294C3FF3483BAFF3483
      BAFF3381B8FF327EB6FF317CB3FF2F79AFFF2D76ACFF2B73A8FF296FA4FF286C
      A0FF367BADFF4E96C4FF226294FF3483BAFF58ADD3FF3483BAFFFFC874FFFFC7
      73FFFFC772FFFFC571FFFFC470FFFFC36FFFFFC36EFF6EDEEEFF8DE7FAFF8BE7
      FAFF246598FF4C92C2FF205F91FF3483BAFF58ACD1FF3483BAFF94BD31FF93BC
      30FFD8C86BFFFFC36EFFFFC26CFFFFC16BFFFFC069FF9ECCB4FF5EDEF8FF85E5
      F9FF226294FF4B8FC1FF1E5C8DFF3483BAFF58AAD1FF3381B8FF72CE62FF3DBD
      29FF3DBC29FFEFC169FFFFBF68FFFFBD66FFFFBC65FFE4C486FF98C8AEFF61D9
      EBFF205F91FF4B8DBFFF1D5A8AFF3483BAFF58A8CFFF327EB6FF6ECB5EFF6CCB
      5DFF3AB926FF3CB92BFFD9BF63FFFFBA62FFFFB960FFFFB85EFFFFB75DFFFFB6
      5BFF1E5C8DFF4A8ABEFF1C5888FF3381B8FF55A4CDFF317CB3FF69C95AFF3BBA
      2FFF4ED572FF46CA58FF23CD58FF53BF46FFA8BD57FFE4A73AFFFC9F2EFFFF9B
      2CFF1D5A8AFF4886BCFF1B5686FF327EB6FF52A0CBFF2F79AFFF55DD8AFF54DC
      88FF78E4A2FF76E4A1FF74E39FFF4EDA81FF4DDA7EFF4BD97CFF4AD97AFF49D8
      79FF1C5888FF4582B9FF1B5686FF317CB3FF519CC9FF2D76ACFF76E4A1FF74E3
      9FFF72E39EFF70E29CFF6EE29BFF6CE29AFF6BE199FF69E198FF67E196FF66E0
      95FF1B5686FF447EB8FF1B5686FF2F79AFFF5099C7FF3982B4FF296FA4FF286C
      A0FF26699CFF246598FF226294FF205F91FF1E5C8DFF1D5A8AFF1C5888FF1B56
      86FF2B669AFF447DB7FF1B5686FF2D76ACFF5198C7FF4D93C3FF4B90C2FF4B8E
      C0FF4B8EC0FFC0E9EAFF76CDDFFF74CDDFFFABE1E7FF4783BAFF4580B9FF437D
      B7FF437CB7FF467EB8FF1B5686FF2B73A8FF296FA4FF286CA0FF26699CFF2465
      98FF226294FF205F91FF1E5C8DFF1D5A8AFF1C5888FF1B5686FF1B5686FF1B56
      86FF1B5686FF1B5686FF1B5686FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFF9F8F8FFF2F2F2FFF4F3
      F3FFF4F4F4FFF5F5F5FFF6F6F6FFF7F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFFBFBFBFF000000FF000000FF000000FF000000FFF0EFEFFFE4E4E3FFE7E6
      E5FFEAEAE9FFEDEDECFFEEEEEDFFEFEFEEFFF0F0EFFFF0F0EFFFEEEEEEFFEEEE
      EEFFF8F8F8FF000000FF000000FF000000FF000000FFEAEAE9FFE9E9E8FFE8E8
      E7FFE6E6E5FFEFEFEFFFF1F1F0FFF2F2F1FFF3F3F2FFF3F3F3FFEEEEEEFFE9E9
      E9FFF9F9F9FF000000FF000000FF000000FF000000FFEAEAEAFFECECEBFFEEEE
      EDFFEAEAE9FFF2F2F1FFF3F3F2FFF4F4F4FFF5F5F5FFF6F6F6FFF7F7F6FFEFEF
      EFFFFAFAFAFF000000FF000000FF000000FF000000FFB1B1B1FF8C8C8BFF7070
      70FF949494FF949494FFECECECFFEFEFEEFF969696FF8D8D8DFFF6F6F6FF7474
      74FFE7E7E7FF000000FF000000FF000000FF000000FFAFAFAFFFF0F0EFFF7070
      70FFF4F4F4FF797979FFB0B0AFFFB1B1B1FFDDDDDDFF6A6A6AFFB8B8B8FFDDDD
      DDFFFCFCFCFF000000FF000000FF000000FF000000FFE8E8E8FFF2F2F1FF7171
      70FFF6F6F6FF727272FFDDDDDDFFE0E0E0FF9F9F9FFFD0D0D0FF616161FFFCFC
      FCFFFCFCFCFF000000FF000000FF000000FF000000FFEAEAE9FFF3F3F3FF7171
      71FFF8F8F8FF808080FFAEAEAEFFA2A2A2FFE4E4E4FFB3B3B3FF9B9B9BFFBCBC
      BCFFFEFEFEFF000000FF000000FF000000FF000000FFECECECFFD7D7D7FF5454
      54FFC5C5C5FF828282FFCACACAFFADADADFF878787FFBBBBBBFFFAFAFAFF5656
      56FFD0D0D0FF000000FF000000FF000000FF000000FFF2F2F1FFF1F1F0FFF7F7
      F7FFFAFAFAFF7D7D7DFFE3E3E3FFF1F1F1FF989898FFF8F8F8FFEAEAEAFFEEEE
      EEFFF8F8F8FF000000FF000000FF000000FF000000FFF9F9F9FFF6F6F6FFF9F9
      F9FFFBFBFBFF9D9D9DFFAEAEAEFFA5A5A5FFCACACAFFEBEBEBFFD4D4D4FFDBDB
      DBFF878787FF000000FF000000FF000000FF000000FFF9F9F9FFF7F7F7FFFAFA
      FAFFF7F7F7FFEFEFEFFFF8F8F8FFF9F9F9FFEEEEEEFFC9C9C9FFF5F5F5FF9A9A
      9AFF000000FF000000FF000000FF000000FF000000FFFAFAF9FFF7F7F7FFFAFA
      FAFFFBFBFBFFFCFCFCFFFEFEFEFFFCFCFCFFF1F1F1FFD4D4D4FF9A9A9AFF0000
      00FF000000FF000000FF000000FF000000FF000000FFFDFDFCFFFBFBFBFFFCFC
      FCFFFDFDFDFFFDFDFDFFFEFEFEFFFDFDFDFFF7F7F7FF888888FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF58351FFF855636FF9B6641FF95633EFF9663
      3EFF95623FFF865634FF24160CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF865737FFBCBCBCFFBFB8B0FFBFB8B1FFBEB7
      B0FFBDB5ACFFBDB7AFFFB18D66FF4D311FFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF95613EFFC0B9B3FFBEA895FFBEA996FFBDA7
      92FFB9A088FFC0BDB8FFBDAB94FFB2916EFF301F12FF000000FF000000FF0000
      00FF000000FF000000FF000000FF95613DFFC0BAB6FFBEAB9BFFBEAC9BFFBDA9
      97FFBBA48EFFB9B0A7FFBDB8B2FFBEBCB8FF986E49FF000000FF000000FF0000
      00FF000000FF000000FF000000FF95613DFFC0BBB6FFBEAD9FFFBEAC9EFFBEAB
      9BFFBDA794FFEAC29CFFE6BE95FFE4BA91FFE4BA91FFC19362FFC29263FF956C
      44FF2F1D0FFF000000FF000000FF95613CFFC1BBB7FFE0AF83FFE0AF83FFBFAD
      9EFFE0AF83FFE5BD95FFFFFFFEFFFDF3E9FFFDF3EAFFFCF2E8FFFAEFE3FFFAF2
      E7FFEABA87FF664129FF000000FF95603BFFC1BBB6FFC1AFA1FFBFAFA2FFBFAE
      A1FFBEAC9DFFE4BA92FFFEF5EDFFFCDEC4FFFBE0C7FFF9DCC1FFF5D3B3FFFEF9
      F3FFFAE2C3FFECC092FF402817FF94603BFFC1BBB6FFC56C29FFC56C29FFC1B0
      A4FFC56C29FFE4BA91FFFEF6F0FFFCE2CDFFFCE3CDFFFADFC8FFF7D9BBFFF5E9
      DDFFFAF3EBFFFBF8F3FFC88051FF965F3BFFBEB9B4FFC1B0A4FFC1B1A6FFC1B0
      A4FFC1AFA3FFE4BA91FFFEF7F1FFFCE5D2FFFCE4D1FFFBE2CCFFF9DDC3FFF6D7
      BAFFF3D1AEFFFAEFE4FFCA8456FF9C613DFFB5B6AFFFE0AF83FFE0AF83FFC1B0
      A4FFE0AF83FFE4BA90FFFFF7F2FFFEE7D5FFFEE7D5FFFDE5D1FFFAE0CAFFF9DE
      C3FFF7D9BBFFFDF2E7FFCA8455FF885434FFBEB8B2FFBDB6B0FFBDB6AFFFBEB6
      B0FFBEB7B1FFE4B990FFFFF7F0FFFFE7D5FFFDE7D6FFFDE6D4FFFCE4D0FFFBE3
      CBFFFADCC1FFFEF3E8FFCA8354FF683E26FF834E30FF965732FF894F2FFF8A4F
      2FFF894F2FFFCA8350FFFFF7F1FFC56C29FFC56C29FFFFE9D9FFC56C29FFC56C
      29FFC56C29FFFFF7F1FFC98253FF000000FF000000FF000000FF000000FF0000
      00FF000000FFC67E4EFFFBF5EEFFFFE9D9FFFFEADBFFFFE9D9FFFFE7D7FFFFE5
      D2FFFFE2CBFFFBF6EFFFCA8053FF000000FF000000FF000000FF000000FF0000
      00FF000000FFCF8151FFEFF1E7FFFFE9D9FFFFEADBFFFFE9D9FFFFE7D7FFFFE5
      D2FFFFE2CBFFEFF2E8FFCE8054FF000000FF000000FF000000FF000000FF0000
      00FF000000FFAC673EFFFCF3ECFFFAF1E8FFFAF0E7FFFBF1E9FFFBF2EAFFFBF2
      EAFFFBF2EBFFFDF4EEFFC0784EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF704024FFA05E36FFC67343FFB5693DFFB6693DFFB5693DFFB569
      3DFFB7693EFFA25F37FFB47048FF000000FF000000FF040F19FF1E6197FF1E61
      97FF1E6197FF1E6197FF1E6197FF1D5B8EFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF06121EFF164368FF1E6197FF3573A3FFB5EF
      FEFF7EDBF3FF7EDBF3FFB5EFFEFF2C6CA0FF1E6197FF133E61FF0A1F31FF0000
      00FF000000FF000000FF000000FF1B5585FF6FB1DAFF7CBEE4FF4C9CDFFFB4EE
      FDFF73D4F0FF73D4F0FFB4EEFDFF499ADEFF6CB3E0FF69AED9FF1D5D90FF0000
      00FF000000FF000000FF000000FF1E6197FF7DBEE4FF67B1DEFF489ADAFF4296
      DCFF4195DCFF4095DCFF4094DCFF3F93DAFF4F9CD5FF6AB0DDFF1E6196FF0000
      00FF000000FF000000FF000000FF1E6197FF7ABCE4FF63ADDDFF60AADCFF5CA7
      DAFF5AA6D9FF4F92BEFF4783ABFF4783AAFF3F7BA8FF4B7EA9FF174C76FF0000
      00FF000000FF000000FF000000FF1E6197FF78BAE3FF5FA9DBFF58A4D9FF519F
      D7FF509ED7FF3F7CA9FFF6F8F9FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF8F8
      F8FF545454FF000000FF000000FF1E6197FF74B8E2FF5AA6D9FF56A3D8FF519F
      D7FF509DD6FF3F7BA8FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
      FCFFF6F6F6FF565656FF000000FF1E6197FF71B6E1FF55A2D7FF519FD7FF4E9C
      D5FF4E9AD4FF3D79A7FFFCFCFCFF0D7D00FF0D7D00FF0D7D00FF0D7D00FF0D7D
      00FF0D7D00FFFCFCFCFF000000FF1E6197FF6EB4E0FF509ED7FF4E9BD6FF4C97
      D4FF4B95D2FF3B75A5FFFCFCFCFF0D7D00FF0D7D00FF0D7D00FF0D7D00FF0D7D
      00FF0D7D00FFFCFCFCFF000000FF1E6197FF6BB2DFFF4E9BD5FF4C97D3FF4993
      D1FF4891D0FF3872A4FFFCFCFCFFFCFCFCFFFFFFFFFFF8F8F8FFF6F6F6FFF3F3
      F3FFEFEFEFFFFCFCFCFF000000FF1E6197FF69B0DEFF4B96D3FF4992D2FF468E
      D0FF468CCEFF376EA2FFFCFCFCFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFCFCFF000000FF1E6197FF67ADDCFF4892D1FF468ED0FF448A
      CEFF4388CCFF346BA1FFFCFCFCFFFCFCFCFFFFFFFFFFFCFCFCFFFAFAFAFFF9F9
      F9FFFFFFFFFFFCFCFCFF000000FF1E6197FF66AADCFF468DCFFF448ACEFF4186
      CDFF4084CBFF3268A0FFFCFCFCFF0D7D00FF0D7D00FF0D7D00FF0D7D00FF0D7D
      00FF0D7D00FFFCFCFCFF000000FF184B73FF60A4D7FF63A7DAFF62A5D9FF60A3
      D8FF60A1D7FF4B7EA9FFFCFCFCFF0D7D00FF0D7D00FF0D7D00FF0D7D00FF0D7D
      00FF0D7D00FFFCFCFCFF000000FF081B2CFF19507BFF1E6197FF1E6197FF1E61
      97FF1E6196FF174C76FFFCFCFCFFFCFCFCFFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFEDEDEDFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF010101FF162D18FF1B371EFF010301FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF152D17FF5BA365FF5FAA69FF1D4022FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040A05FF040904FF000000FF0000
      00FF18331BFF589D60FF77C883FF4D9755FF132D15FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040A05FF336438FF336039FF020602FF1023
      12FF57A161FF75C781FF52A05AFF153217FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF29542EFF6BBE77FF6FBF7AFF3D7844FF569F
      5FFF73C57DFF4A9552FF102812FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF09130AFF42814AFF6EC079FF72C47DFF70C3
      7AFF499550FF163317FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF060C06FF38763EFF60B269FF4C9B
      53FF0F2711FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF050B05FF265A2AFF132F
      14FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000001FF05050EFF010102FF0000
      00FF000000FF010102FF0C0B1FFF060614FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000001FF1B1A3AFF5F5DC9FF1C1B3FFF0101
      02FF010102FF17163DFF5554CEFF2E2C7EFF03030EFF000000FF000000FF0000
      00FF000000FF000000FF000000FF020207FF5A58C4FF817DFEFF6967E2FF1B1B
      43FF191843FF5C59DEFF716FFCFF4644C4FF060614FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF14142FFF6360DCFF7A77FDFF6765
      EAFF615FE9FF6D6AFBFF4A47D5FF0D0D2CFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF131332FF615EE6FF706C
      FFFF6B69FFFF504EE1FF0D0C30FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF010102FF181743FF5D5CE9FF6866
      FFFF6462FFFF4F4DE5FF0F0F40FF000002FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF010102FF15153DFF5554DEFF6664FBFF4D4B
      E0FF4745DFFF5957F9FF3C3AD6FF0C0B3AFF000002FF000000FF000000FF0000
      00FF000000FF000000FF000000FF060612FF4845C5FF6260FAFF4341D3FF0C0C
      30FF09092FFF3331CFFF4D4BF7FF2827BCFF020212FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000003FF161545FF3937BDFF0B0B2CFF0000
      00FF000000FF07062AFF2222B5FF0B0A42FF000003FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000003FF03030DFF000000FF0000
      00FF000000FF000000FF01000CFF000003FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      DAFF0000FFFF0000FFFF0000FFFF0000FDFF0000FDFF0000FDFF0000D8FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0000D8FF2429
      FFFF5A67FFFF5966FFFF5865FEFF5663FEFF5461FEFF525FFEFF2025FCFF0000
      E1FF000000FF000000FF000000FF000000FF000000FF0000D8FF2429FFFF5B68
      FFFF4145FFFF3232FEFF3030FEFF2E2EFDFF2B2BFDFF363AFCFF4D5BFCFF1D23
      FAFF0000D2FF000000FF000000FF000000FF0000D8FF2429FFFF5B68FFFF5659
      FFFFCFCFFFFF5050FEFF2D2DFDFF2A2AFDFF4949FCFFCCCCFEFF464AFBFF4755
      FBFF1B21F9FF0000D0FF000000FF000000FF0000FFFF5966FFFF4145FEFFCFCF
      FFFFF3F3FFFFEDEDFFFF4A4AFCFF4848FCFFECECFFFFF2F2FFFFCACAFEFF282D
      FAFF404FFAFF0000F3FF000000FF000000FF0000FFFF5865FEFF3131FEFF4E4E
      FDFFEDEDFFFFF3F3FFFFEDEDFFFFEDEDFFFFF2F2FFFFECECFEFF3C3CFAFF1515
      F8FF3D4CF9FF0000F1FF000000FF000000FF0000FDFF5562FEFF2E2EFDFF2B2B
      FDFF4949FCFFEDEDFFFFF2F2FFFFF2F2FFFFECECFFFF3B3BF9FF1414F8FF1212
      F7FF3A49F8FF0000F1FF000000FF000000FF0000FDFF5360FEFF2A2AFDFF2727
      FCFF4646FCFFEDEDFFFFF2F2FFFFF2F2FFFFECECFEFF3838F9FF1111F7FF0E0E
      F6FF3646F8FF0000F1FF000000FF000000FF0000FDFF505DFDFF2626FCFF4545
      FCFFECECFFFFF2F2FFFFECECFFFFECECFEFFF1F1FFFFEAEAFEFF3232F7FF0A0A
      F5FF3343F8FF0000EFFF000000FF000000FF0000FBFF4D5BFDFF3035FBFFCBCB
      FEFFF2F2FFFFEBEBFEFF3939F9FF3737F8FFEAEAFEFFF1F1FEFFC4C4FDFF161B
      F6FF3141F7FF0000EFFF000000FF000000FF0000D4FF1D23FAFF4856FBFF4045
      FBFFC9C9FDFF3939F9FF1212F7FF0F0FF6FF3131F7FFC4C4FDFF2E33F7FF3242
      F7FF1219F2FF0000C4FF000000FF000000FF000000FF0000D4FF1B21F9FF4251
      FAFF2227F9FF1111F7FF0E0EF6FF0B0BF5FF0808F5FF1419F5FF3141F7FF1219
      F1FF0000C4FF000000FF000000FF000000FF000000FF000000FF0000D2FF181E
      F5FF3A4AF9FF3847F8FF3645F8FF3343F8FF3241F7FF3040F7FF1219F1FF0000
      C4FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      CEFF0000F1FF0000F1FF0000F1FF0000EFFF0000EFFF0000EDFF0000CCFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00AF
      DAFF00CCFFFF00CCFFFF00CCFFFF00CAFDFF00CAFDFF00CAFDFF00ADD8FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF00ADD8FF24D9
      FFFF5AEBFFFF59EBFFFF58EAFEFF56EAFEFF54E9FEFF52E9FEFF20D5FCFF00B5
      E1FF000000FF000000FF000000FF000000FF000000FF00ADD8FF24D9FFFF5BEC
      FFFF41DDFFFF32D6FEFF30D5FEFF2ED4FDFF2BD3FDFF36D9FCFF4DE7FCFF1DD4
      FAFF00A7D2FF000000FF000000FF000000FF00ADD8FF24D9FFFF5BECFFFF56E1
      FFFFCFF5FFFF50DCFEFF2DD4FDFF2AD3FDFF49D9FCFFCCF4FEFF46DBFBFF47E5
      FBFF1BD3F9FF00A6D0FF000000FF000000FF00CCFFFF59EBFFFF41DDFEFFCFF5
      FFFFF3FDFFFFEDFBFFFF4AD9FCFF48D8FCFFECFBFFFFF2FCFFFFCAF4FEFF28D5
      FAFF40E4FAFF00C1F3FF000000FF000000FF00CCFFFF58EAFEFF31D5FEFF4EDA
      FDFFEDFBFFFFF3FDFFFFEDFBFFFFEDFBFFFFF2FCFFFFECFAFEFF3CD4FAFF15CB
      F8FF3DE3F9FF00C0F1FF000000FF000000FF00CAFDFF55EAFEFF2ED4FDFF2BD3
      FDFF49D9FCFFEDFBFFFFF2FCFFFFF2FCFFFFECFBFFFF3BD3F9FF14CBF8FF12C9
      F7FF3AE1F8FF00C0F1FF000000FF000000FF00CAFDFF53E9FEFF2AD3FDFF27D2
      FCFF46D8FCFFEDFBFFFFF2FCFFFFF2FCFFFFECFAFEFF38D3F9FF11C9F7FF0EC8
      F6FF36E2F8FF00C0F1FF000000FF000000FF00CAFDFF50E8FDFF26D2FCFF45D8
      FCFFECFBFFFFF2FCFFFFECFBFFFFECFAFEFFF1FCFFFFEAFAFEFF32D0F7FF0AC5
      F5FF33E1F8FF00BEEFFF000000FF000000FF00C9FBFF4DE8FDFF30D8FBFFCBF4
      FEFFF2FCFFFFEBFAFEFF39D3F9FF37D2F8FFEAFAFEFFF1FBFEFFC4F2FDFF16CF
      F6FF31E0F7FF00BEEFFF000000FF000000FF00AAD4FF1DD4FAFF48E6FBFF40DB
      FBFFC9F3FDFF39D3F9FF12C9F7FF0FC8F6FF31D0F7FFC4F2FDFF2ED4F7FF32E0
      F7FF12CDF2FF009CC4FF000000FF000000FF000000FF00A8D4FF1BD3F9FF42E5
      FAFF22D3F9FF11C9F7FF0EC8F6FF0BC5F5FF08C5F5FF14CDF5FF31E0F7FF12CC
      F1FF009CC4FF000000FF000000FF000000FF000000FF000000FF00A6D2FF18CF
      F5FF3AE3F9FF38E1F8FF36E1F8FF33E1F8FF32DFF7FF30E0F7FF12CCF1FF009C
      C4FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00A5
      CEFF00C0F1FF00C0F1FF00C0F1FF00BEEFFF00BEEFFF00BDEDFF00A3CCFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0A1418FF377388FF000101FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF3D829BFFAADBEDFF193641FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF142B35FFA3D7EBFFDCF4FBFF4699BDFF0307
      09FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF020405FF4496BAFFB3EBF8FF8DE6F8FFB4DDEEFF224F
      66FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF1F4457FFABD9ECFF81E3F8FF3187C1FFABEDFAFF419B
      CDFF061015FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF050D10FF79BCDFFFA1EAF9FF5FDCF6FF2F86C1FF75E1F7FFB5DE
      F0FF28668EFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF2A6485FFAADBEFFF72E0F7FF56DAF5FF56DAF5FF5BDBF5FF8FE6
      F8FF91C0E1FF0B212FFF000000FF000000FF000000FF000000FF000000FF0000
      00FF0A1A23FF8DC1E1FF96E8F9FF5FDCF6FF59DBF5FF3087C1FF59DBF5FF68DE
      F6FFB0E7F6FF246CA1FF010305FF000000FF000000FF000000FF000000FF0000
      00FF2B73A1FFDDECF6FFBCEEF9FFABEAF8FFAAEAF8FFAAEAF8FFAAEAF8FFACEA
      F8FFD4F3FBFFA3C8E4FF103654FF000000FF000000FF000000FF000000FF0000
      00FF2975A7FF2B7CB5FF2A7AB4FF2878B3FF2776B2FF2575B1FF2473B0FF2271
      AFFF216FAEFF1F6DAEFF13436DFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFABD5E4FF56A4
      D8FF84B0DBFF449CD0FF05141CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFAEE4F3FF75BDE7FFB3D2
      F0FFE5F3FFFFABD2EFFF3A72A4FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFA7D9E8FF80D6EEFFB1E3F9FF8ABF
      E7FFADD3F6FFC3E0FCFF5E94C5FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFB9E3F0FF7BD4EEFFC3F6FDFF6ADDF6FF6BCA
      EDFF61A2D7FF5087B7FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFBCE5F2FF77D3EEFFC7F7FDFF5DDCF5FF59E2F7FF78D6
      F2FF4FA1E2FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFAED4E5FF75CBE7FFC7F7FDFF5CDCF5FF58E1F7FF79D4F1FF4999
      DDFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFB1D5E5FF74B9D7FFC1F6FDFF61DFF7FF5BE2F8FF77D3F0FF4797DCFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFA4C2
      D7FF78B5D5FF8FB6D1FF53C9E4FF59DFF5FF76D0EDFF4F9CDDFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF4188
      A9FFE0F2FFFF5299D8FF1878BDFF4797C4FF468DC7FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2C65
      84FF93C7F9FF90C9F9FF3F84C9FF2469ADFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF4A89BDFF6DA7CBFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF142219FF4E8561FF4D8D
      64FF38754FFF0A1C10FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF14231AFF5FAA80FF94D4B3FFB9E6
      D0FF68BA8EFF2B8E55FF071F10FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF3E7E55FF8FD3B0FF91D6B0FFFFFF
      FFFF63BB8BFF65BB8EFF166332FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF2F794AFF9BD4B5FFFFFFFFFFFFFF
      FFFFFFFFFFFF94D2B1FF176935FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF186434FF60B98AFF5EB986FFFFFF
      FFFF5EB886FF65BB8EFF166332FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF061C0EFF268B51FF62B98CFF94D2
      B1FF62B98CFF268B51FF071F10FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF061E0FFF155F30FF1769
      35FF155F30FF061E0FFF000000FF554A2AFF675835FF2F2710FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF3E341BFFE7E5DFFFD6D1C4FF7D704DFF6153
      31FF362D17FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF615537FFFDFDFDFFCBC6B7FFF8F7
      F6FFD7D3C7FF60532BFF0B0A05FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF1F1A0CFFD6D2C8FFE1DDD5FFF0EF
      EBFFFFFFFFFFF8F7F6FF726543FF110E07FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF010100FF72674DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFCFBFF695A35FF030200FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF261F0EFFCDC8BCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E6DFFF493B17FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF1F1B10FFDAD6CBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF867A5AFF0A0804FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF362F19FFFDFCFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E7E0FF4C3E1EFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF3D331CFFF9F9F8FF7F70
      49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF827450FF0A0804FF0000
      00FF000000FF000000FF000000FF000000FF000000FF1B1609FFB1AA98FF4F3E
      10FFA59F8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E6E0FF665731FF322C
      1AFF000000FF000000FF000000FF000000FF000000FF000000FF443615FF0E0B
      04FF3F3721FFF3F2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD9
      CEFF5A4E31FF060502FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF36332CFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E0
      D8FFA59D87FF514117FF040301FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF2F2E2EFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFF796B
      46FF29210CFF020101FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF373737FFFFFFFFFFFFFFFFFFFDFDFDFFF5F5
      F2FF897E5DFF3B3118FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF212121FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE9E7E1FF342F24FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFBCBCBCFFBCBCBCFFBCBC
      BCFF000000FF767676FF737373FF6F6F6FFF6A6A6AFF646464FF5F5F5FFF5858
      58FF525252FF0D0D0DFF000000FF000000FF000000FFBCBCBCFFF0F0F0FFBCBC
      BCFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFBCBCBCFFF0F0F0FFBBBB
      BBFF000000FF6C6C6CFF676767FF626262FF5B5B5BFF555555FF4E4E4EFF0000
      00FF000000FF000000FF000000FF000000FF000000FFBCBCBCFFEFEFEFFFBBBB
      BBFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFBBBBBBFFEDEDEDFFB9B9
      B9FF000000FF5F5F5FFF585858FF525252FF4B4B4BFF444444FF3C3C3CFF3535
      35FF2E2E2EFF070707FF000000FF000000FF000000FFBABABAFFEBEBEBFFB7B7
      B7FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFB8B8B8FFE8E8E8FFB5B5
      B5FF000000FF4E4E4EFF474747FF404040FF393939FF313131FF2A2A2AFF0000
      00FF000000FF000000FF000000FF000000FF000000FFB6B6B6FFE6E6E6FFB3B3
      B3FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFB4B4B4FFE5E5E5FFB3B3
      B3FF000000FF3C3C3CFF353535FF2E2E2EFF272727FF202020FF1A1A1AFF1313
      13FF0E0E0EFF010101FF000000FF000000FF000000FFB3B3B3FFE4E4E4FFB3B3
      B3FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFB3B3B3FFB3B3B3FFB3B3
      B3FF000000FF2A2A2AFF232323FF1D1D1DFF161616FF111111FF0B0B0BFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000101FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF1F3B44FF1D3238FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000001FF71C6DCFF7FC4D6FF000000FF000000FF000000FF0100
      00FF110D0AFF231810FF030100FF000000FF000000FF000000FF000000FF0000
      00FF000000FF1E3840FFA0ECFEFFA5EDFEFF1E3138FF000000FF0B0806FF8B96
      A1FF818D99FF6E889FFF020100FF000000FF000000FF000000FF000000FF0000
      00FF000001FF74C6DCFFB9F3FFFFC4F5FFFF63BCD5FF010101FF6F7B87FF6D9B
      C4FF556A80FF050303FF000000FF000000FF000203FF010D11FF062129FF1B43
      4EFF478799FFA3EDFEFFC5F6FFFFBEF4FFFF7EE4FDFF64787BFF729FC7FF5F8D
      B7FF1C282DFF000203FF000000FF020E12FF26C3EAFF2ED6FDFF20D5FEFF59DC
      FEFF97EAFFFFBBF3FFFFC6F6FEFFA7DAE3FF8AA6ADFF7CA0C0FF6998C2FF4C74
      9DFF52AABAFF34C0E2FF01090CFF000000FF020D11FF39C1E2FF3CD9FEFF7CE4
      FFFF9AC7CEFF9FAFB2FF94A2ABFF869FB7FF719EC6FF6A99C3FF6492BCFF485C
      74FF3EB0CDFF020C10FF000000FF000000FF000000FF020D10FF61C4DFFF88AA
      B1FF9BB1C6FF89AED0FF729FC7FF6B9AC3FF6998C2FF6795BFFF517AA6FF364B
      53FF01090BFF000000FF000000FF000000FF000000FF000000FF282928FF9CB7
      D0FF6D93B9FF5981ACFF5A85B0FF5B86B1FF60758DFF5A7EA4FF464B5CFF241D
      1CFF000000FF000000FF000000FF010000FF605A57FF7D8894FF778BA2FF6A89
      97FF94A7A6FF83A5ABFF6293A1FF4D6669FF536D8DFF416571FF47747BFF2921
      1FFF000000FF000000FF000000FF000000FF332F2EFF2D2B2CFF121212FF93E6
      FAFFBDF3FFFF98EAFFFF6BDDFAFF516361FF386571FF0DB6D8FF30D5FBFF0002
      03FF000000FF000000FF000000FF000000FF000000FF000000FF10171AFF94EA
      FEFF96EAFEFF69DFFDFF378AA2FF2C879FFF59DBF9FF1BD5FEFF29D6FEFF010F
      13FF000000FF000000FF000000FF000000FF000000FF000000FF22383EFF67E0
      FEFF4B9CB4FF0D1A1FFF000000FF000000FF031C23FF299BB9FF43DAFEFF0529
      32FF000000FF000000FF000000FF000000FF000000FF000000FF294047FF1724
      28FF000000FF000000FF000000FF000000FF000000FF000000FF04232CFF0635
      42FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF080808FF151515FF131313FF060606FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF080808FF696969FF8A8A8AFF868686FF626262FF020202FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF141414FF8A8A8AFF666666FF5C5C5CFF818181FF020202FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF111111FF888888FF616161FF555555FF7D7D7DFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF040404FF5F5F5FFF828282FF7D7D7DFF565656FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF010101FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF050D10FF040D
      10FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF2F8199FF267F
      99FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF050D0FFF153842FF64D7F8FF57D2
      F8FF0A3645FF010B0EFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF224E59FF68D8F9FF71DAF8FF8AE0FAFF81DD
      F9FF4FCEF7FF30C2F4FF094157FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF266577FF72DAF8FF8BE0FAFF82DD
      F9FF52D0F6FF0D5975FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF020607FF4AD0F7FF82DEF9FF78D9
      F9FF2AC0F4FF000507FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF051013FF4BCFF7FF21B1DEFF1BAD
      DDFF31C2F4FF010E13FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF081A20FF0C3745FF000001FF0000
      01FF073244FF03171FFF000000FF000000FF000000FF000000FF000000FF0000
      01FF04151EFF0D3F58FF13597BFF125676FF0B364CFF020D13FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF051B29FF1D88
      C6FF24AAF2FF24AAF2FF24AAF2FF24AAF2FF24AAF2FF24A7F0FF186FA3FF020A
      10FF000000FF000000FF000000FF000000FF000000FF0B375CFF2094EBFF2097
      EDFF2097EDFF2097EDFF2097EDFF2097EDFF2097EDFF2097EDFF2097EDFF1E8E
      E0FF05192BFF000000FF000000FF000000FF06213DFF1B84E8FF1B84E8FF1B84
      E8FF1B84E8FF135BA0FF0C3861FF0D3D69FF1669B9FF1B84E8FF1B84E8FF1B84
      E8FF1B7FE0FF020A13FF000000FF000307FF1666D3FF1770E3FF1770E3FF1564
      CBFF030E1CFF000000FF000000FF000000FF000000FF062141FF176EDDFF1770
      E3FF1770E3FF104EA2FF000000FF051D48FF125DDEFF125DDEFF125DDEFF020B
      19FF000000FF010608FF0A3143FF092A38FF000203FF000000FF061E48FF125D
      DEFF125DDEFF125DDEFF010917FF0A349CFF0E4ADAFF0E4ADAFF093291FF0000
      00FF02090CFF26AFE1FF2AC3F8FF2AC3F8FF2096C3FF000101FF000001FF0E48
      D1FF0E4ADAFF0E4ADAFF04194CFF0934CDFF0A37D5FF0A37D5FF03134AFF0000
      00FF11526CFF2AC3F8FF2AC3F8FF2AC3F8FF2AC3F8FF082732FF000000FF0626
      94FF0A37D5FF0A37D5FF051B6EFF0628C9FF0629D1FF0629D1FF020D44FF0000
      00FF135C75FF2AC3F8FF2AC3F8FF2AC3F8FF2AC3F8FF092D39FF000000FF041D
      92FF0629D1FF0629D1FF03156BFF051D96FF0628D1FF0628D1FF010D43FF0000
      00FF04151AFF29BEF2FF2AC3F8FF2AC3F8FF26B1E0FF010406FF000001FF0627
      CAFF0628D1FF0628D1FF020E48FF020D43FF0628D1FF0628D1FF010D43FF0000
      00FF000000FF04171DFF16647FFF135970FF020A0DFF000000FF020D47FF0628
      D1FF0628D1FF0628D1FF000416FF000106FF0625C1FF0628D1FF010D43FF0000
      00FF000005FF000000FF000000FF000000FF000000FF010C3EFF0628CDFF0628
      D1FF0628D1FF051C93FF000000FF000000FF020A35FF0628D1FF010D43FF0000
      00FF03115AFF051C93FF03115AFF031362FF0521AAFF0628D1FF0628D1FF0628
      D1FF0627C9FF000310FF000000FF000000FF000000FF020F4FFF010D42FF0000
      00FF03115AFF0628D1FF0628D1FF0628D1FF0628D1FF0628D1FF0628D1FF0626
      C5FF010724FF000000FF000000FF000000FF000000FF000000FF000003FF0000
      00FF03115AFF0628D1FF0628D1FF0628D1FF0628D1FF0628CFFF041A8AFF0002
      0DFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00020EFF020E4AFF031467FF031364FF020C3EFF00030FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF80634CFFCAA180FFDCA679FFDCA578FFDAA3
      78FFD8A177FFD8A077FFD59F74FFD49D73FFD29C71FFCF9970FFCE986EFFCB95
      6DFFC9936AFFB38C6EFF705440FFD9A882FFF1DCCEFFEAC09FFFE8B891FFE8B8
      91FFE8B891FFE8B891FFE8B891FFE8B891FFCDC8C4FFE8B891FFCDC8C4FFE8B8
      91FF4262FFFFE8C3A6FFBC8D6BFFDCA679FFDBA378FFDAA277FFD8A177FFD7A0
      76FFD59E74FFD39D72FFD19B71FFCF9970FFCD966EFFCB946CFFC9936AFFC790
      69FFC38E67FFC28C65FFBF8A64FFDBA378FF2F2F2FFF303030FF313131FF3232
      32FF333333FF343434FF353535FF373737FF393939FF3A3A3AFF3B3B3BFF3D3D
      3DFF3F3F3FFF414141FFBC8661FFD9A277FF323232FF1E1E1EFF1F1F1FFF2020
      20FF222222FF232323FF242424FF262626FF282828FF2A2A2AFF2B2B2BFF2D2D
      2DFF2F2F2FFF444444FFB9845EFFD8A177FF323232FF1E1E1EFFCFCFCFFFA7A7
      A7FF222222FF232323FF242424FF262626FF282828FF2A2A2AFF2B2B2BFF2D2D
      2DFF2F2F2FFF444444FFB6805CFFD59F74FF373737FF232323FF242424FFDEDE
      DEFF727272FF282828FF2A2A2AFF2B2B2BFF2D2D2DFF2F2F2FFF303030FF3232
      32FF333333FF494949FFB47C5AFFD49D73FF3B3B3BFF272727FFD1D1D1FFACAC
      ACFF2C2C2CFF2D2D2DFF2F2F2FFF303030FF323232FF343434FF353535FF3636
      36FF383838FF4C4C4CFFB17A58FFD19B71FF404040FF2D2D2DFF2E2E2EFF2F2F
      2FFF313131FF323232FF343434FF343434FF363636FF383838FF393939FF3B3B
      3BFF3B3B3BFF505050FFAF7856FFCF9970FF454545FF313131FF323232FF3434
      34FF353535FF373737FF383838FF393939FF3A3A3AFF3C3C3CFF3D3D3DFF3E3E
      3EFF3F3F3FFF535353FFAC7654FFCC966DFF494949FF363636FF373737FF3838
      38FF3A3A3AFF3B3B3BFF3D3D3DFF3D3D3DFF3F3F3FFF404040FF404040FF4242
      42FF434343FF555555FFAB7352FFCA936CFF4C4C4CFF3B3B3BFF3B3B3BFF3C3C
      3CFF3D3D3DFF3F3F3FFF404040FF414141FF424242FF434343FF444444FF4444
      44FF464646FF585858FFA97151FFC8916AFF505050FF515151FF525252FF5353
      53FF545454FF555555FF555555FF565656FF575757FF585858FF595959FF5A5A
      5AFF5A5A5AFF5B5B5BFFA8704FFF473527FFC28D66FFBF8A64FFBD8762FFBA84
      5FFFB8825DFFB57E5CFFB37C5AFFB17A58FFB07956FFAD7755FFAC7454FFAA73
      52FFA87151FFA86F4FFF3B281DFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0503
      00FF2F1F02FF734C04FF936006FF744C04FF3A2502FF090600FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0F0A00FF563903FFB57707FFB37507FF543803FF0201
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0E0900FF8C5B06FFB97907FF8556
      05FF050300FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF030200FF815405FFB979
      07FF815405FF010000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF050300FF9C66
      06FFB97907FF422B02FF000000FF000000FF020100FF231601FF231601FF1F15
      01FF160E00FF160E00FF0F0900FF000000FF000000FF000000FF000000FF2116
      01FFB77907FFAD7107FF030200FF000000FF0C0800FFB97907FFB97907FFB979
      07FFB97907FFB97907FF6D4704FF000000FF000000FF000000FF000000FF0000
      00FF885905FFB97907FF291B01FF000000FF030200FF4C3103FF784E04FFB979
      07FFAD7107FF7E5305FF503403FF000000FF000000FF000000FF000000FF0000
      00FF342302FFB97907FF644204FF000000FF000000FF000000FF221601FFB979
      07FF7E5304FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0D0800FFB77907FF472F03FF000000FF000000FF000000FF221601FFB979
      07FF7E5304FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF010100FF261801FF000000FF000000FF000000FF000000FF221601FFB979
      07FF7E5304FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF221601FFB979
      07FF7E5304FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF1F1401FFB979
      07FF7E5304FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF160E00FFB979
      07FF784E04FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF160E00FFB979
      07FF654204FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF040200FF2F1F
      02FF261801FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0069D0FF026BD4FF026BD4FF026BD4FF026B
      D4FF026BD4FF026BD4FF026BD4FF026BD4FF026BD4FF026BD4FF026BD4FF026B
      D4FF026BD4FF026BD4FF026BD4FF026BD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF026BD4FF026BD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF6FDFAFFF6FDFAFFF6FDFAFFF6FDFAFFF6FDFAFFF6FD
      FAFFF9FFFEFFF9FFFEFF026BD4FF026BD4FFFFFFFFFFFFFFFFFFF6FDFAFFF6FD
      FAFFF6FDFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF026BD4FF026BD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF026BD4FF026BD4FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6
      F6FFE9EEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFF
      FFFFFFFFFFFFFFFFFFFF026BD4FF026BD4FFFFFFFFFFFFFFFFFFEEF0F0FF8A8C
      8CFF575D5CFF8A8C8CFFE9EEECFFFFFFFFFFF1F6F5FFA3AAA7FF6C7271FFA3AA
      A7FFF1F6F5FFFFFFFFFF026BD4FF026BD4FFFFFFFFFFE4E5E3FF999999FF8484
      84FF6A6C6CFF1B1D1DFF333333FFBFC1C1FFE9EEECFF909794FF666B6AFF4A4F
      4EFFA3A8A6FFF6F6F6FF026BD4FF026BD4FFF6FDFAFF999999FF4A4F4EFFFFFF
      FFFFFFFFFFFFB2B4B4FF1E1E1EFF000000FF737674FFE4E5E3FFFFFFFFFF7C81
      80FF848484FFE9EEECFF026BD4FF026BD4FFFFFFFFFFC4C6C6FF636664FF787D
      7CFF8A8C8CFFE9EEECFFDCDCDCFF555757FF0D1210FF4E514FFF8A8C8CFF9999
      99FFD1D2D0FFF6FDFAFF026BD4FF026BD4FFFFFFFFFFFFFFFFFFCED2D3FF6C72
      71FF7C8180FFDCDCDCFFFFFFFFFFF6FDFAFFAAAFADFF636664FF7B807EFFC8CF
      CCFFFFFFFFFFFFFFFFFF0069D0FF0069D0FFFFFFFFFFFFFFFFFFFFFFFFFFEEF0
      F0FFF6F6F6FFF6F6F6FFEEF3F1FFF9FFFEFFF9FFFEFFF1F6F5FFEEF3F1FFF6FD
      FAFFFFFFFFFFFFFFFFFF026BD4FF026BD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF6FDFAFFF6FDFAFFF6FDFAFFF9FFFEFFF9FFFEFFF9FFFEFFF9FF
      FEFFF9FFFEFFF9FFFEFF026BD4FF026BD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF026BD4FF026BD4FFFFFFFFFFFFFFFFFFF6FDFAFFF6FD
      FAFFF6FDFAFFF6FDFAFFF6FDFAFFF6FDFAFFF6FDFAFFF6FDFAFFF6FDFAFFF6FD
      FAFFF6FDFAFFFFFFFFFF026BD4FF0069D0FF0069D0FF0069D0FF026BD4FF026B
      D4FF026BD4FF026BD4FF026BD4FF026BD4FF026BD4FF026BD4FF026BD4FF026B
      D4FF026BD4FF026BD4FF026BD4FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF403F3FFF777675FF020202FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF403F3FFFC0BDBCFF7C7978FF636160FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF272626FFC4C2C1FFC0BDBCFF827E7DFF656362FF4D4C4CFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF4242
      42FFC0BDBCFFC0BDBCFFC4C2C1FF757473FF656362FF656362FF6D6B6AFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF3A3A3AFF0000
      00FF7A7978FFC4C2C1FF0A0A0AFF000000FF545352FF706E6DFF020202FF3838
      38FF000000FF000000FF000000FF000000FF000000FF272626FFA29F9EFF4D4C
      4CFF0A0A0AFF0A0A0AFF000000FF000000FF020202FF070707FF403F3FFF9B98
      97FF4D4C4CFF000000FF000000FF000000FF403F3FFFC4C2C1FFA29F9EFF6563
      62FF454444FF020202FF000000FF000000FF000000FF403F3FFFC0BDBCFF9B98
      97FF656362FF4D4C4CFF000000FF403F3FFFC0BDBCFFC0BDBCFFA4A1A1FF6563
      62FF656362FF454444FF020202FF000000FF272626FFC0BDBCFFC0BDBCFF9D9A
      99FF656362FF656362FF4D4C4CFFA3A2A1FFC0BDBCFFC4C2C1FF181818FF7372
      70FF656362FF706E6DFF070707FF000000FF7A7978FFC0BDBCFFC7C4C3FF1818
      18FF6B6968FF656362FF757372FF020202FFA8A6A5FF181817FF000000FF0202
      02FF575655FF121212FF0C2030FF296696FF0A0B0CFFA5A4A3FF0A0A0AFF0000
      00FF020202FF777776FF080808FF000000FF000000FF000000FF000000FF0000
      00FF000000FF1A364DFF1C98F8FF1C98F8FF3285C5FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF1A364DFF1C98F8FF1C98F8FF1C98F8FF1C98F8FF2F84C5FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF263C
      4EFF1C98F8FF1C98F8FF1C98F8FF1C98F8FF1C98F8FF1C98F8FF3687C5FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF336B96FF1C98F8FF1C98F8FF1C98F8FF1C98F8FF2C9FF8FF020203FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF336B96FF1C98F8FF1C98F8FF2C9FF8FF020203FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF336B96FF2C9FF8FF04090CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF227790FF58B9D8FF5ABAD9FF5ABA
      D9FF5ABAD9FF59BAD9FF2C88A4FF000101FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF32A8CEFFFDFEFEFFFEFFFFFFFEFE
      FFFFFDFEFFFFFEFFFFFFEAF7FBFF65BDD9FF63BCD7FF63BCD7FF63BCD7FF6FC0
      D8FF589DB2FF051318FF000000FF000000FF2D9AC1FFF7FCFEFF8DE4F8FF90DE
      F5FF9EE0F5FFABE1F6FFEFFBFEFFF4FDFEFFF3FCFEFFF1FCFEFFEFFBFEFFEEFB
      FEFFEEF1F3FF247896FF000000FF000000FF2F98C4FFF1FAFDFF93DEF5FF92DC
      F4FF80D5F2FF68CAEDFF6ACBEAFF84D3EFFF7ED2EFFF78D0EFFF74CFEEFF70CF
      EEFFE9F7FBFF2E9DC6FF000000FF000000FF31A4D1FFE8F6FBFF93D4EFFF87CE
      EEFF71C0E9FFC9E9F6FFF2FCFEFFF3FCFEFFF2FCFEFFF0FCFEFFEFFBFEFFEEFB
      FEFFFEFFFFFF31A0CCFF000000FF000000FF339FD1FFFEFFFFFFF8FDFFFFF6FD
      FFFFF5FCFFFFF3FCFEFFD8F6FCFF93E6F8FF84E3F7FF74DFF6FF66DBF5FF5AD8
      F4FFD7F4FCFF3099CCFF000000FF000000FF3298D0FFF6FCFEFFC8F2FCFFB8EF
      FBFFABECFAFF9BE8F9FF8AE3F7FF7AE0F6FF6ADCF6FF5BD9F5FF4DD6F4FF42D3
      F3FFD0F3FCFF3094CCFF000000FF000000FF3291CEFFF2FAFDFFB2EDFAFFA3E9
      F9FF94E6F8FF84E2F7FF74DEF6FF63DBF5FF55D7F4FF47D4F3FF39D1F2FF2ECE
      F1FFCCF2FBFF308DCCFF000000FF000000FF3089CCFFEFFAFEFFA0E9F9FF90E5
      F8FF80E1F7FF70DEF6FF61DAF5FF52D7F4FF45D3F3FF37D0F2FF2CCDF1FF24CB
      F0FFCAF2FBFF3089CCFF000000FF000000FF2872B0FFC3D4DDFFA4D9F0FF9DDB
      F4FF95DAF3FF8DD8F3FF85D7F3FF7DD4F2FF77D3F2FF70D2F1FF6AD0F1FF67CF
      F1FFBFE8F6FF2C7DC0FF000000FF000000FF081929FF12395CFF2470B5FF297F
      CAFF297FCAFF297FCAFF297FCAFF297FCAFF297FCAFF297FCAFF297FCAFF297E
      CAFF2779C0FF0E2C47FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF000000FF000000FF000000FF808080FFC0C0C0FFFFFFFFFFC0C0
      C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0
      C0FF808080FF000000FF000000FF000000FF808080FFFFFFFFFFC0C0C0FFFFFF
      FFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFC0C0C0FFFFFFFFFFC0C0
      C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0
      C0FF808080FF000000FF000000FF000000FF808080FFFFFFFFFFC0C0C0FFFFFF
      FFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFC0C0C0FFFFFFFFFFC0C0
      C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0
      C0FF808080FF000000FF000000FF000000FF808080FFFFFFFFFFC0C0C0FFFFFF
      FFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFC0C0C0FFFFFFFFFFC0C0
      C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0
      C0FF808080FF000000FF000000FF000000FF808080FFFFFFFFFFC0C0C0FFFFFF
      FFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFC0C0C0FFFFFFFFFFC0C0
      C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0
      C0FF808080FF000000FF000000FF000000FF808080FFFFFFFFFFC0C0C0FFFFFF
      FFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFC0C0C0FFFFFFFFFFC0C0
      C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0
      C0FF808080FF000000FF000000FF000000FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF000000FF000000FF000000FF808080FFC0C0C0FFFFFFFFFFC0C0
      C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0
      C0FF808080FF000000FF000000FF000000FF808080FFFFFFFFFFC0C0C0FFFFFF
      FFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFC0C0C0FFFFFFFFFFC0C0
      C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFF808080FFFFFFFFFFC0C0
      C0FF808080FF000000FF000000FF000000FF808080FFFFFFFFFFC0C0C0FFFFFF
      FFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFF808080FF808080FF808080FFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFC0C0C0FFFFFFFFFF8080
      80FFFFFFFFFFC0C0C0FFFFFFFFFF808080FF808080FF808080FFFFFFFFFFC0C0
      C0FF808080FF000000FF000000FF000000FF808080FFFFFFFFFF808080FF8080
      80FF808080FFFFFFFFFF808080FF808080FF808080FFFFFFFFFFC0C0C0FFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFC0C0C0FFFFFFFFFF8080
      80FF808080FF808080FF808080FF808080FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0
      C0FF808080FF000000FF000000FF000000FF808080FFFFFFFFFFC0C0C0FFFFFF
      FFFF808080FF808080FF808080FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFC0C0C0FFFFFFFFFFC0C0
      C0FFFFFFFFFF808080FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0
      C0FF808080FF000000FF000000FF000000FF808080FFFFFFFFFFC0C0C0FFFFFF
      FFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFF
      FFFF808080FF000000FF000000FF000000FF808080FFC0C0C0FFFFFFFFFFC0C0
      C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0C0FFFFFFFFFFC0C0
      C0FF808080FF000000FF000000FF000000FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF020502FF3E6B46FF85C38DFF89C3
      88FF406E46FF030603FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF020503FF7FC293FFCFF1DBFFD1E4BDFFD8D7
      A4FFCDCA98FF7AB581FF020503FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF3B6C46FFB6EFC1FFC3EDB4FFD7D59AFFCCBD
      72FFA5CD73FF93DD9EFF325E3AFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF82C898FF8BE087FFCCE7AFFFCAB365FFA7D6
      70FF69D446FF65BC64FF6AA77AFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF82C796FF90D580FFC4BC73FFD4A958FFBEAA
      5CFFB4A256FF72A564FF67A375FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF396942FF90D39AFFA5B96DFFD6A757FFD09D
      4EFFA09F55FF7DB386FF2B5531FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF020503FF67AB7AFFA8CF98FFCBAF72FFC5A7
      6BFF74BA88FF599868FF020502FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF020502FF315834FF6D9361FF6B97
      65FF2B5531FF020502FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF07090AFF6C8793FFACD6E6FFA5D4
      EAFF5A8AA6FF060C0FFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF030405FFACD2E0FFE0F9FDFFE3FAFEFFDEF9
      FDFFD2F7FDFF87C2E8FF030609FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF1B2B34FFD5F5FDFFDCF8FDFFE0F8FDFFDAF6
      FDFFB9F2FBFFB1ECFAFF0C2134FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0E181DFFC4EAF9FF68D1F4FF6ACAF3FF61C5
      F2FF49C7F1FFA7DDF5FF0B1A28FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF416680FF87C7F3FF6FE2F6FF6BE1
      F6FF6EBAF0FF396A99FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF395F7EFF50B0CCFF48A4
      BEFF1C466EFF000001FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF101314FFBCBAB9FFA7A4
      A3FF0C0E10FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF010101FF101112FF0E10
      10FF010102FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0D0C0BFF464341FF4F4138FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0706
      05FF6B90B4FF607A93FF090809FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF5261
      72FF6A99C3FF1B1D21FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF060403FF4C545DFF6D9C
      C5FF628EB8FF070504FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF040302FF3F4244FF6C7F91FF7EA4C6FF6D9BC5FF6B9A
      C4FF556E89FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF080707FF829DB6FF6E9CC5FF6896C0FF6591BBFF698FB1FF6189
      AFFF373134FF000000FF000000FF000000FF000000FF000000FF000000FF1514
      13FF24282DFF4E6177FF2A3139FF1C1E23FF20252CFF383131FF567496FF2F21
      18FF362E2FFF000000FF000000FF000000FF000000FF000000FF000000FF1815
      13FF24272DFF030202FF000000FF000000FF000000FF201814FF191515FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFF8F8F8FFF7F7F7FFF4F4F4FFEDED
      EDFFF5F5F5FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFBFBFBFF0F0F0FFF0F0F0FFF0F0F
      0FFFF4F4F4FFF7F7F7FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF6F6F6FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFCFCFCFF0F0F0FFF0F0F0FFF0F0F
      0FFF0F0F0FFFFAFAFAFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFBFBFBFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFCFCFCFF0F0F0FFF0F0F0FFF0F0F
      0FFF0F0F0FFFFCFCFCFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF020001FF400023FFAF00
      5EFFAB005BFF3B0020FF020001FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF400023FFFD7EC3FFFBB8
      DFFFFAB0DBFFF07BBAFF36001CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFAD005EFFFBB7DFFFF87C
      C7FFF56CBBFFF590C9FF8D0047FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFA70059FFF8A8D6FFF56E
      BCFFF465B6FFF385C1FF820040FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF39001EFFEE7AB8FFF58F
      C9FFF384C2FFE476B0FF280012FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF020001FF33001AFF8700
      43FF7E003DFF270012FF010000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0B0B19FF1415
      38FF0B0B19FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF5F61CBFF6E6FEDFF6265
      EAFF6F70EDFF5D60CAFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF1F2C21FF4D7554FF7A7CECFF7072EEFF8281
      F2FF5E61E8FF555BE5FF000101FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7EB386FF80B588FF6D71E9FF9493F4FF7174
      ECFF5B5FE8FF5057E2FF010102FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF91BD97FFABCFB1FF79A29DFF6765C3FF6367
      E8FF605FC2FFA48B8CFFA17F5CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF4B684EFF8FBD96FF84B78BFFC7A482FFC9A9
      8BFFCBA782FFB88C61FFB48558FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0B100BFF1B2C1DFFC4A07EFFD6BC
      A1FFC4A07AFFB78C5FFFB08054FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0C0907FF7D60
      47FFBA8F66FF7A583DFF0D0A07FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0D0D0DFF0D0D
      0DFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF7F7F7FFF7C7C
      7CFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0C0C0CFF373737FFD3D3D3FFCFCF
      CFFF353535FF0B0B0BFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF4B4B4BFFD5D5D5FFD7D7D7FFDEDEDEFFDADA
      DAFFCCCCCCFFC0C0C0FF414141FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF636363FFD7D7D7FFDEDEDEFFDBDB
      DBFFCDCDCDFF595959FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF060606FFCCCCCCFFDBDBDBFFD7D7
      D7FFBEBEBEFF050505FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF101010FFCCCCCCFFADADADFFA9A9
      A9FFC0C0C0FF0E0E0EFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF1A1A1AFF363636FF000000FF0000
      00FF323232FF171717FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF231021FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF662F61FF351732FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF020102FF231121FF5C2E
      56FF91478AFFA54E9BFF9D4995FF95438DFFA75E9FFFA1599AFF271025FF0000
      00FF000000FF000000FF000000FF000000FF090408FF572C52FFC277B8FFCA88
      C0FFD093C8FFD194C8FFCF8FC5FFCB8BC2FFC986C0FFC37EBCFF944C8EFF1C0A
      1BFF000000FF000000FF000000FF020102FF552B50FFC984BFFFD49ACBFFCE8E
      C4FFCF91C7FFCC8CC3FFCA87C1FFC582BDFFC37CBCFFC077BAFF8C4587FF1D09
      1CFF000000FF000000FF000000FF221120FFBE73B5FFD297C9FFCF93C7FFC785
      BFFFA65C9FFF85377DFF7C3276FF742C6FFF8F4789FF8A4385FF200A1FFF0000
      00FF000000FF000000FF000000FF572A52FFC27EB9FFCC8CC3FFC382BCFF6B2E
      65FF271025FF000000FF000000FF000000FF441641FF250B23FF000000FF0000
      00FF000000FF000000FF000000FF853E7DFF904188FF863B7EFF73316EFF210D
      1FFF000000FF000000FF000000FF000000FF150615FF000000FF180C17FF170A
      15FF160A15FF150913FF130812FF150914FF140913FF130712FF120711FF1106
      10FF000000FF2C1729FF000000FF000000FF000000FF000000FF291327FF833C
      7CFF863B7EFF7F3678FF692A62FF000000FF000000FF000000FF000000FF0000
      00FF492545FF7E3F76FF000000FF000000FF000000FF2F162DFF74346CFFC585
      BDFFC987C1FFB26DABFF3C1639FF000000FF000000FF000000FF000000FF3E20
      3BFFC779BCFFC175B7FFAA52A0FFA24C99FF9A4792FFAB61A3FFC282BAFFC986
      C0FFC581BEFF964E90FF140713FF000000FF000000FF000000FF361B33FFC377
      B9FFD79DCEFFD49ACBFFD296CAFFCF91C7FFCC8CC3FFCA87C1FFC178B9FFC37C
      BCFFA35B9DFF321130FF010001FF000000FF000000FF000000FF2F182CFFBC71
      B3FFD195C8FFCF93C7FFCD8EC5FFCA89C2FFC784C0FFBD78B6FFAC63A5FF9149
      8BFF30102EFF040104FF000000FF000000FF000000FF000000FF000000FF3318
      30FFAF64A7FFA95FA2FF8A3B83FF82357AFF793074FF60235BFF371334FF1306
      12FF010001FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF351732FF5B2756FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF1B0B1AFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0E0700FF3218
      00FF643100FF643100FF643100FF643100FF643100FF401F00FF2C1500FF0C06
      00FF000000FF000000FF000000FF000000FF000000FF000000FF301800FF6431
      00FF643100FF643100FF643100FF643100FF643100FF643100FF663706FF6536
      08FF2E2822FF000000FF000000FF000000FF000000FF0B0500FF6F3F11FF6431
      00FF643100FF724315FFB59D85FFA98D70FF9A7756FF7D5227FF643100FF6431
      00FF8A653EFF312922FF000000FF000000FF000000FF1F0F00FF643100FF6431
      00FF6B3B0BFF9E7D5DFFFFFFFFFFFFFFFFFFFFFFFFFFA08060FF643100FF6431
      00FF663403FFFFFFFFFF070502FF000000FF000000FF391C00FF643100FF6431
      00FF7A4F23FFD7C9BBFFFFFFFFFFFFFFFFFFFFFFFFFFAF9479FF643100FF6431
      00FF683706FFFDFDFCFF52361BFF000000FF000000FF532800FF643100FF6431
      00FF8E6843FFFFFFFFFFFFFFFFFFFFFFFFFFE3DAD1FF8B643EFF643100FF6431
      00FF865D35FFFCFBF9FF946130FF000000FF0B0500FF643100FF643100FF6431
      00FFA58768FFCBB8A7FFBAA38CFFA28363FF8E6843FF643100FF643100FF7548
      1BFFB59C84FFE9DED3FF905E2FFF000000FF1F0F00FF643100FF643100FF6431
      00FF643100FF643100FF643100FF643100FF643100FF643100FF81562CFF9A77
      56FFF3EEE8FFCAAE94FF5C3D1EFF000000FF391C00FF643100FF643100FF6431
      00FF643100FF643100FF643100FF643100FF734517FF855B33FFB1977CFFEDE3
      DAFFDCCAB8FF784F26FF22160BFF000000FF532800FF643100FF643100FF6431
      00FFD9CCBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F0EBFFEADFD5FFCDB2
      99FF664321FF412B15FF000000FF0B0500FF643100FF643100FF643100FF7E54
      2AFFFFFFFFFFB28B64FF986431FF986431FF986431FF986431FF7B5128FF5E3F
      1FFF26190CFF000000FF000000FF1F0F00FF643100FF643100FF643100FFB8A0
      89FFEDE5DCFF986431FF090603FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF381B00FF643100FF643100FF76491CFFFFFF
      FFFFC8AB90FF674521FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF532800FF643100FF643100FF9A7756FFF3ED
      E7FF986431FF1F150AFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFD3D3D3FFFFFFFFFFFFFFFFFFDCCA
      B8FF764E26FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF7D5328FF986431FF9864
      31FF412B15FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1D32
      20FF44784BFF66BD73FF5FB76BFF366D3DFF142916FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF070C08FF5A9B63FFB3DC
      B6FFBBE0B9FFB8E1B4FFCEEACBFFA3CEA5FF19371CFF261B12FFA9784EFF0D09
      05FF000000FF000000FF000000FF000000FF0C140DFF9FD5A7FFB9E0BAFFA6DA
      9FFF7BCE6EFF7DCD71FFAFD9ACFF3E8A45FF020201FFC08858FFEBC19DFFDDA1
      71FF140D08FF000000FF000000FF000100FF68B774FFBDE1BDFF93D488FF6CCA
      60FF6CC95EFF9DD696FF92C095FF0A190BFF4D3522FFE7B38DFFF3D3B4FFE9BA
      97FFB87243FF000000FF000000FF1E3521FFB2DAB4FFA1D899FF6BCA5DFF64C5
      56FF7ECC73FFA2CEA2FF28602DFF080503FFD38E5AFFF2D1B1FFEBB88CFFF0C9
      A9FFD89B6EFF321C0FFF000000FF437E4CFFB9DFB7FF78CC6BFF64C557FF70C8
      64FFA7DAA2FF66A76BFF030703FF7E5435FFE6B48DFFF0CCABFFE5A56FFFE9B0
      83FFE3AE87FF764021FF000000FF5AAF65FFB5E0B0FF79CC6DFF91D288FFACD9
      A8FF88B78AFF133115FF18100AFFC37E4CFFEFC8A8FFE6A571FFE29A65FFE297
      64FFE7B28EFF965027FF000000FF4B9A53FFCAE8C8FFAED9AAFF91BE93FF3179
      36FF0C1F0DFF000001FF010101FF895632FFE7B692FFE7A575FFE08F5BFFDE8D
      5AFFE6AC87FF934A23FF000000FF326C37FF8FBE92FF347B39FF0B1B0CFF0101
      02FF151539FF4948D5FF020207FF844E2DFFE4AF8AFFE39B6BFFDD8452FFE295
      65FFDA966BFF643115FF000000FF0D1E0FFF09170AFF010102FF1E1E4CFF5252
      E0FF7A7CF3FF5756F4FF010107FF7D4827FFE1A780FFE09162FFD9774AFFE7A7
      83FFBD6E48FF261207FF000000FF000001FF26265AFF5C5CEDFF8384F4FFA2A7
      EFFF9FA4EDFF4D4AF1FF010107FF794122FFDEA077FFDE8859FFE6A57DFFD086
      5AFF823D18FF000000FF000000FF000001FF5555E0FF9498F2FFA4A9EEFF7980
      E6FF9699EBFF423EEFFF010107FF723B1DFFDB986EFFE6A37DFFCB7E55FFA553
      2FFF0E0602FF000000FF000000FF000000FF08081AFF6060F3FF7B7DEEFF9398
      EBFF8C90E9FF3935ECFF010007FF6D3619FFD68D60FFB76441FF693113FF0A04
      01FF000000FF000000FF000000FF000000FF000000FF040411FF2926B6FF5654
      EBFF6A6BE7FF312BE9FF000007FF653215FF592A11FF231006FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0A08
      3BFF140F91FF1B13E8FF000007FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF131313FF414141FF3C3C
      3CFF151515FF030303FF383838FF4F4F4FFF3E3E3EFF6E6C6AFF817C77FF6463
      61FF131313FF000000FF000000FF000000FF61605CFFB79C7BFF9D7748FF9F79
      4CFFBFA789FFD1C3B2FFA38053FF98703FFFA9895FFFC8B399FFA8875DFF956B
      39FFB79E7DFF5B5957FF000000FF0A0A0AFFBAA284FF916632FF916632FF9166
      32FFC7B298FF936835FF916632FF916632FF916632FF916632FFBFA789FFA380
      54FF916632FFB89E7CFF141414FF313131FFA48256FF916632FF916632FF976E
      3DFFBEA587FF916632FF916632FF916632FF916632FF916632FF916633FFC9B4
      9AFF916632FFAB8B62FF242424FF323232FFA48155FF916632FF916632FFA886
      5CFFD4C3AFFFC7B196FFB69B77FF916632FF916632FF9A7242FFD1BFA9FFDFD3
      C4FF966D3BFFBA9F7DFF0C0C0CFF131313FFB59874FF916632FF916632FFAA8A
      61FFAC8D64FFAC8C64FFCAB59CFF916632FF916632FFB39570FFAF916AFFC5AE
      93FF926733FFAE9E8AFF000000FF000000FFB7A48CFF916632FF916632FFAA8A
      61FFA9895FFF916632FFC2AB8EFF916633FF916632FF9D7648FFBAA07EFFC2AB
      8FFF956B39FF75726FFF000000FF000000FF938B81FF916632FF916632FFB092
      6CFFA48154FF916632FFC4AD91FF916632FF916632FF916632FFC7B297FFC1AA
      8DFFBAA183FF121212FF000000FF000000FF484848FF9E784BFF916632FF9C75
      46FFBFA788FF926834FFC5AF93FF916632FF916632FF916632FFA17C4FFFE6DC
      D0FF89847CFF000000FF000000FF000000FF050505FFB9A48AFF916632FF9268
      34FFBEB4A7FFB4AB9FFFD3C3AEFF936936FF916632FF916632FF936936FFE2D8
      CAFF787878FF6A6A6AFF131313FF000000FF000000FF686662FFA27E52FFBAA8
      92FF918F8DFFB0A18EFFBFA789FFA8865CFF916632FF916632FFA7855AFFD1C1
      ACFFC1AE96FF908A83FF040404FF000000FF000000FF000000FF4E4E4EFF1C1C
      1CFF74716DFF8F877CFF868585FFA8865CFF916632FF916632FFB29570FF1E1E
      1EFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF212121FFA9895FFF916632FF916632FFBEA688FF0303
      03FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF151515FFB0926BFF916632FF916632FFB2A08AFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF020202FFBBA891FF916632FF9E784AFF7F7A73FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF242424FF807A75FF4D4C4CFF010101FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF020201FF2B1E
      0CFF5F4315FF705217FF503D14FF141105FF040301FF020200FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF5F461AFFBB87
      1AFFC49A25FFC9A42EFFCBA732FFC1A03AFF1E1B09FF0C0B03FF050401FF0101
      00FF000000FF000000FF000000FF000000FF000000FF030300FFB38C2BFFC9A4
      2EFFD2B342FFD9BF58FFDBC463FFAF9B4DFF74652BFFA98F33FF493E15FF241D
      09FF221907FF42270BFF3B2B13FF000000FF010000FF1E1909FFC9A32EFFD4B8
      49FFE0CC79FFE8D99DFFEBDEA9FF857C48FFC0AD66FFD9C059FFCFAF3AFFC59C
      26FFB67C17FFA55911FF191308FF000000FF020200FF544417FFCFAF3BFFDFC9
      71FFEBDEAAFFF2E9C7FFF3ECCEFF796F35FFEADEADFFE4D38AFFD8BE55FFCCA9
      34FFBF901EFFAC7224FF010100FF000000FF040401FF8F7530FF8B7634FF7565
      2BFF867439FFBFA97DFFE1D8B7FF938A4DFFF2EAC9FFEBDFAAFFDFCB75FFD1B2
      3FFFC49B25FF785820FF000000FF000000FF090802FF524015FF968039FFC5B3
      6CFFBEB478FF948C4CFF7D6E23FFBDB07CFFF4EED2FFEEE4B9FFE3D186FFD4B7
      47FFC7A02AFF3A2B13FF000000FF000000FF322C12FFCBA732FFD9C05BFFE8D9
      9CFFF1E9C6FFF5EFD6FF968944FF8A782CFFA18F57FFCDBD88FFCDB672FFA687
      3AFF665221FF0C0A03FF000000FF000000FF69531BFFC9A32DFFD6BB4EFFE4D3
      8CFFEEE4B9FFEDE4C2FF887A3AFFEFE8C7FFB6A970FF827439FF705D25FF7C63
      22FF91772FFF040300FF000000FF000000FFA6771FFFC49A24FFD0B03CFFDDC6
      69FFE7D89AFFBFB381FF9B905AFFF0E6BEFFEBDEAAFFE2CF80FFD4B849FFC8A1
      2BFF61501EFF020200FF000000FF0D0A03FFA96211FFBC891BFFC9A32DFFD3B4
      43FFDCC566FF7C723BFFC8B775FFE4D38CFFDFCA73FFD6BA4DFFCBA833FFC194
      23FF26200DFF000000FF000000FF291C07FF51310FFF302411FF332912FF624F
      1CFFBFA03BFF554C23FFD6BA52FFD4B849FFD0B03DFFCAA52FFFC09320FFAF7C
      28FF050401FF000000FF000000FF000000FF000000FF000000FF010100FF0504
      01FF120F04FF3E3615FFC7A12DFFC69E28FFC29722FFBB881AFFAF6D13FF6E48
      1BFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF020200FF040401FF211C0CFF614F25FF7D602BFF66451AFF311E0AFF0403
      01FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF227790FF58B9D8FF5ABAD9FF5ABA
      D9FF5ABAD9FF59BAD9FF2C88A4FF000101FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF32A8CEFFFDFEFEFFFEFFFFFFFEFE
      FFFFFDFEFFFFFEFFFFFFEAF7FBFF65BDD9FF63BCD7FF63BCD7FF63BCD7FF6FC0
      D8FF589DB2FF051318FF000000FF000000FF2D9AC1FFF7FCFEFF8DE4F8FF90DE
      F5FF9EE0F5FFABE1F6FFEFFBFEFFF4FDFEFFF3FCFEFFF1FCFEFFEFFBFEFFEEFB
      FEFFEEF1F3FF247896FF000000FF000000FF2F98C4FFF1FAFDFF93DEF5FF92DC
      F4FF80D5F2FF68CAEDFF6ACBEAFF84D3EFFF7ED2EFFF78D0EFFF74CFEEFF70CF
      EEFFE9F7FBFF2E9DC6FF000000FF000000FF31A4D1FFE8F6FBFF93D4EFFF87CE
      EEFF71C0E9FFC9E9F6FFF2FCFEFFF3FCFEFFF2FCFEFFF0FCFEFFEFFBFEFFEEFB
      FEFFFEFFFFFF31A0CCFF000000FF000000FF339FD1FFFEFFFFFFF8FDFFFFF6FD
      FFFFF5FCFFFFF3FCFEFFD8F6FCFF93E6F8FF84E3F7FF3AA774FF2F9E63FF5AD8
      F4FFD7F4FCFF3099CCFF000000FF000000FF3298D0FFF6FCFEFFC8F2FCFFB8EF
      FBFFABECFAFF9BE8F9FF8AE3F7FF7AE0F6FF6ADCF6FF32A36CFF58B280FF2697
      55FFD0F3FCFF3094CCFF000000FF000000FF3291CEFFF2FAFDFFB2EDFAFFA3E9
      F9FF94E6F8FF3BA46DFF36A36DFF32A167FF2E9D61FF53AE7AFF90CBA9FF4DAA
      72FF189046FF308DCBFF000000FF000000FF3089CCFFEFFAFEFFA0E9F9FF90E5
      F8FF80E1F7FF35A269FF95CEAFFF93CDACFF90CBA9FF8FCBA7FF72BB8FFF89C7
      A0FF44A466FF078636FF000000FF000000FF2872B0FFC3D4DDFFA4D9F0FF9DDB
      F4FF95DAF3FF2F9E61FF93CDACFF6DB98DFF69B788FF64B584FF5FB27EFF65B4
      81FF82C197FF3A9F5AFF007722FF000000FF081929FF12395CFF2470B5FF297F
      CAFF297FCAFF279A59FF8FCAA8FF8CC8A4FF89C5A0FF87C49DFF68B584FF81C1
      96FF46A464FF036C2BFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF1F944EFF198E46FF138C40FF0E8839FF389E5CFF7EC095FF44A2
      60FF005314FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF006E23FF41A05DFF004E
      13FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF00681AFF02791CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF002D3DFF0079A4FF0071
      99FF000000FF000000FF000000FF000000FF000000FF000101FF0079A4FF0070
      97FF000405FF000000FF000000FF000000FF003246FF47A2C3FFBEECFAFF4BA9
      C9FF2C6876FF8D6A41FFD7A263FFD7A263FF8D6A41FF2E6773FF58B1CFFF69B9
      D4FF006B94FF000203FF000000FF002635FF4AA2C2FFB4E8F9FF54AFCEFF3399
      B9FFECC387FFE9CB93FFE7D09CFFE7D09CFFE9CB93FFDEC18DFF2C9BC0FF75C3
      DEFF5FAFCCFF006B96FF000000FF002636FF69B4D1FF54AACBFF369DBFFFE2C7
      91FFE6D1A8FFE0C1A5FFD5AD95FFD5AA91FFDEBC9FFFE4CFA5FFBEC09DFF44AE
      D3FFA6DDF0FF1C7FA7FF000305FF00080CFF076F9CFF298FB4FFDEBE89FFE2C9
      A6FFDFBEADFFF1E3DCFFF3F1ECFFF4F1EBFFF1E2D9FFDCB9A2FFDFC29DFF8BB0
      A8FF339BC5FF08638CFF000305FF000000FF342E22FFD3AC75FFDFC399FFDEBC
      A9FFFFFFFFFFF0F0EEFFE7E5DAFFFFFFF7FFFFFFF7FFFFFEF3FFDCB397FFDBBF
      95FFC1A97CFF352A1CFF000000FF000000FF745533FFD3AB73FFD9B697FFF1E3
      D6FFFEFBF5FFF5F5F3FF9E9D94FFF0F0E9FFF8F8F2FFBDB8ACFFF0DAC1FFD2A9
      86FFD3AB73FF745533FF000000FF000000FFA67C47FFCEA56FFFD1A488FFFAF6
      E9FFFDF8EEFFFFFFF9FF807E77FFB0ADA3FF807D75FFC9C5B9FFFAF0D3FFC995
      70FFCEA56FFFA67C47FF000000FF000000FF9D7342FFC99B64FFCF9E7EFFFAF3
      E2FFFDF6E9FFF2F0E3FF8C8B83FF807D75FFD2CFC1FFFFFBEBFFFAECCCFFC78F
      6BFFC99B64FF9D7342FF000000FF000000FF614627FFBE8E56FFCDA280FFF0DB
      C0FFFFF7E6FFFAF2E3FFC4BFB5FFF1EDDEFFFFFCE8FFFFF5DFFFEFD4AEFFC898
      70FFBE8E56FF614627FF000000FF000000FF281D10FFAF7E48FFC59A6DFFD9A9
      87FFFFFEEBFFFFFAEEFFFFFDF2FFFFFEF2FFFFFCEFFFFFFDEBFFD9A278FFC198
      6AFFAF7E48FF281D10FF000000FF000000FF060402FF674A27FFB27B44FFC198
      6FFFD8A988FFEFDFCFFFFAF6F3FFFAF5F3FFEFDFD1FFD7A684FFBD936AFFB27B
      44FF674A27FF060402FF000000FF000000FF000000FF161008FF967D5FFFAE76
      42FFBA8B5CFFC1926FFFC39072FFC28E6FFFBE8F6AFFB7895BFFB38557FF9479
      5AFF161008FF000000FF000000FF000000FF000000FF0C0C0CFFD3D3D3FFBDBA
      B8FF9B6939FFA56A33FFAD6D35FFAD6D35FFA56A33FFA07448FFC2C1C0FFC3C3
      C2FF0B0B0BFF000000FF000000FF000000FF010101FFA3A3A3FFDBDBDBFF9999
      99FF1F160BFF453118FF684A25FF684A25FF453118FF1E160BFFA0A09FFFD9D9
      D9FFADADADFF030303FF000000FF000000FF000000FF737373FF999999FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF020202FF8F8F
      8FFF828282FF010101FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF1414
      14FF555555FF818181FFB0B0B0FFADADADFF747474FF4D4D4DFF0D0D0DFF0000
      00FF000000FF000000FF000000FF000000FF000000FF050505FF7C7C7CFFD0D0
      D0FFE8E8E8FFF3F3F3FFFDFDFDFFFCFCFCFFEDEDEDFFE0E0E0FFC1C1C1FF6565
      65FF010101FF000000FF000000FF000000FF000000FF686868FFE1E1E1FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFCFCF
      CFFF424242FF000000FF000000FF000000FF000000FF9B9B9BFFF8F8F8FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFEAEA
      EAFF8B8B8BFF000000FF000000FF000000FF000000FF999999FFF7F7F7FFE7E7
      E7FFEFEFEFFFF6F6F6FFFBFBFBFFFAFAFAFFF0F0F0FFDEDEDEFFC2C2C2FFE6E6
      E6FF8A8A8AFF000000FF000000FF000000FF000000FF979797FFF6F6F6FFEBEB
      EBFFDEDEDEFFD6D6D6FFD5D5D5FFD1D1D1FFC2C2C2FFBBBBBBFFBFBFBFFFE5E5
      E5FF898989FF000000FF000000FF000000FF000000FF969696FFF5F5F5FFEEEE
      EEFFE6E6E6FFE2E2E2FFE6E6E6FFE1E1E1FFCDCDCDFFC1C1C1FFC1C1C1FFE3E3
      E3FF868686FF000000FF000000FF000000FF000000FF949494FFF4F4F4FFEAEA
      EAFFE1E1E1FFDDDDDDFFE3E3E3FFDEDEDEFFC9C9C9FFBCBCBCFFBEBEBEFFE2E2
      E2FF848484FF000000FF000000FF000000FF000000FF949494FFF3F3F3FFE7E7
      E7FFDDDDDDFFD9D9D9FFE0E0E0FFDBDBDBFFC3C3C3FFB7B7B7FFBABABAFFE1E1
      E1FF818181FF000000FF000000FF000000FF000000FF929292FFF2F2F2FFE2E2
      E2FFD8D8D8FFD5D5D5FFDCDCDCFFD8D8D8FFBFBFBFFFB2B2B2FFB6B6B6FFE0E0
      E0FF7E7E7EFF000000FF000000FFBFBFBFFFB9B9B9FFB2B2B2FFAAAAAAFFA1A1
      A1FF979797FF838383FFDBDBDBFFD6D6D6FFBEBEBEFFAFAFAFFFB2B2B2FFDEDE
      DEFF787878FF000000FF000000FFA8A8A8FFB9B9B9FFBEBEBEFFB8B8B8FFB2B2
      B2FF9B9B9BFF525252FFDBDBDBFFD6D6D6FFBFBFBFFFC9C9C9FFE6E6E6FFC3C3
      C3FF747474FF000000FF000000FF000000FF939393FFA7A7A7FFB0B0B0FF9898
      98FF707070FFF4F4F4FFF5F5F5FFF4F4F4FFEFEFEFFFE2E2E2FFB9B9B9FF6F6F
      6FFF050505FF000000FF000000FF000000FF000000FF808080FF939393FF6C6C
      6CFF8C8C8CFFA0A0A0FFAAAAAAFFA6A6A6FF949494FF727272FF272727FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF5E5E5EFF0000
      00FF000000FF000000FF050505FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF3A2E27FFBD987FFFEDBF9EFFEBBD
      9CFFEBBB99FFE9B995FFE7B692FFE6B48FFFE4B18BFFE2AE87FFE0AB83FFDDA8
      7EFFDCA47BFF89654BFF000000FF000000FFC9A387FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFCB976CFF000000FF000000FFECBE9DFFFBF7F4FF9BD5A4FF97D3
      A0FF93D09CFF8FCE97FF8ACB92FF86C98DFF81C588FF7CC283FF78C07EFF74BD
      7AFFFBF7F4FFD49A6DFF000000FF000000FFEBBC9AFFFBF7F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBF7F4FFD19668FF000000FF000000FFE9B997FFFBF7F4FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2
      A5FFFBF7F4FFCE9262FF000000FF000000FFE7B693FFFBF7F4FFE9C2A5FFFFFF
      FFFFE8C3A8FFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7F1EBFFCB8E5DFF000000FF000000FFE5B38EFFFAF6F2FFE9C5A9FFE9C5
      ABFFEAC7ABFFE9C7ACFFE9C9ADFFE9C9AFFFE8C7ABFFE9C9AFFFE8C8AFFFE8CC
      B4FFF2E7DEFFC88957FF000000FF000000FFE3B08BFFFAF6F1FFEAC9ADFFFFFF
      FFFFEAC9AFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1E5DBFFC58553FF000000FF000000FFE1AD86FFFAF4F0FFEACBB1FFEACC
      B2FFEACCB2FFEACCB2FFEACCB2FFEACEB6FFE8C7ABFFE8C7ABFFE8C8AFFFE8C8
      ADFFF0E2D8FFC38552FF000000FF000000FFDFA981FFF9F3EFFFEACEB6FFFFFF
      FFFFEBD0BAFFFFFFFFFFFFFFFFFFFFFFFFFFEACFB9FFFBF6F2FFFFFFFFFFFFFF
      FFFFF0E2D8FFC88C5DFF000000FFBFBFBFFFB9B9B9FFB2B2B2FFAAAAAAFFA1A1
      A1FF979797FF838383FFEBD0BAFFEBD1BCFFEACDB4FFEACDB4FFEACDB4FFEACD
      B4FFF0E2D8FFC5895AFF000000FFA8A8A8FFB9B9B9FFBEBEBEFFB8B8B8FFB2B2
      B2FF9B9B9BFF525252FFFFFFFFFFFFFFFFFFEAC7ACFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0E2D8FFC58B5DFF000000FF000000FF939393FFA7A7A7FFB0B0B0FF9898
      98FF707070FFF3E7DEFFF1E4DBFFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2
      D8FFF0E2D8FFC08759FF000000FF000000FF7E5C42FF808080FF939393FF6C6C
      6CFFCB8D5CFFC98959FFC78654FFC28350FFC28350FFC28350FFC28350FFC283
      50FFC28350FF58371EFF000000FF000000FF000000FF000000FF5E5E5EFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF
    }
  end
  object PopupQueryLoad: TPopupMenu
    OnPopup = PopupQueryLoadPopup
    left = 272
    top = 104
  end
  object popupDB: TPopupMenu
    Images = ImageListMain
    OnPopup = popupDBPopup
    left = 272
    top = 152
    object menuEditObject: TMenuItem
      Caption = 'Edit'
      Hint = 'Edit selected object'
      ImageIndex = 129
      ShortCut = 32781
      OnClick = menuEditObjectClick
    end
    object menuDeleteObject: TMenuItem
    end
    object menuEmptyTables: TMenuItem
    end
    object Runroutines1: TMenuItem
    end
    object menuCreateObject: TMenuItem
      Caption = 'Create new'
      ImageIndex = 130
      object menuCreateDB: TMenuItem
      end
      object menuCreateTable: TMenuItem
      end
      object menuCreateTableCopy: TMenuItem
      end
      object menuCreateView: TMenuItem
      end
      object menuCreateRoutine: TMenuItem
      end
      object menuCreateTrigger: TMenuItem
      end
      object Event1: TMenuItem
      end
    end
    object menuClearDataTabFilter: TMenuItem
      Caption = 'Clear data tab filter'
      OnClick = menuClearDataTabFilterClick
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object menuExporttables: TMenuItem
    end
    object menuMaintenance2: TMenuItem
    end
    object Findtextonserver1: TMenuItem
    end
    object menuBulkTableEdit: TMenuItem
    end
    object N5a: TMenuItem
      Caption = '-'
    end
    object menuTreeExpandAll: TMenuItem
      Caption = 'Expand all'
      ImageIndex = 87
      OnClick = menuTreeExpandAllClick
    end
    object menuTreeCollapseAll: TMenuItem
      Caption = 'Collapse all'
      ImageIndex = 88
      OnClick = menuTreeCollapseAllClick
    end
    object menuTreeOptions: TMenuItem
      Caption = 'Tree style options'
      object menuGroupObjects: TMenuItem
        AutoCheck = True
      end
      object menuShowSizeColumn: TMenuItem
        Caption = 'Display size of objects'
        OnClick = menuShowSizeColumnClick
      end
      object menuAutoExpand: TMenuItem
        Caption = 'Auto expand on click'
        OnClick = menuAutoExpandClick
      end
      object menuDoubleClickInsertsNodeText: TMenuItem
        Caption = 'Doubleclick inserts node text'
        OnClick = menuDoubleClickInsertsNodeTextClick
      end
      object menuSelectBGColor: TMenuItem
      end
      object actFavoriteObjectsOnly1: TMenuItem
        AutoCheck = True
      end
    end
    object menuPrint: TMenuItem
    end
    object menuRefreshDB: TMenuItem
    end
    object Disconnect1: TMenuItem
    end
  end
  object popupHost: TPopupMenu
    Images = ImageListMain
    OnPopup = popupHostPopup
    left = 201
    top = 104
    object Copy2: TMenuItem
    end
    object N26: TMenuItem
      Caption = '-'
    end
    object menuFetchDBitems: TMenuItem
      Caption = 'Fetch database items'
      Enabled = False
      OnClick = menuFetchDBitemsClick
    end
    object Kill1: TMenuItem
      Caption = 'Kill Process(es)...'
      Enabled = False
      ImageIndex = 26
      ShortCut = 46
      OnClick = KillProcess
    end
    object menuEditVariable: TMenuItem
      Caption = 'Edit ...'
      ImageIndex = 33
      ShortCut = 13
      OnClick = menuEditVariableClick
    end
    object menuExplainProcess: TMenuItem
      Caption = 'EXPLAIN query'
      Enabled = False
      Hint = 'Analyze selected process SQL'
      ImageIndex = 39
      OnClick = lblExplainProcessClick
    end
    object menuExplainAnalyzer: TMenuItem
      Caption = 'EXPLAIN analyzer on MariaDB.org'
      Enabled = False
      Hint = 'Pass EXPLAIN output to MariaDB''s analyzer webpage'
      ImageIndex = 39
      OnClick = lblExplainProcessAnalyzerClick
    end
    object N1a: TMenuItem
      Caption = '-'
    end
    object PrintList2: TMenuItem
    end
    object Refresh1: TMenuItem
    end
  end
  object SynSQLSyn1: TSynSQLSyn
    DefaultFilter = 'SQL Files (*.sql)|*.sql'
    Enabled = False
    CommentAttri.Foreground = clGray
    DataTypeAttri.Foreground = clMaroon
    FunctionAttri.Foreground = clNavy
    IdentifierAttri.Foreground = clOlive
    KeyAttri.Foreground = clBlue
    NumberAttri.Foreground = clPurple
    StringAttri.Foreground = clGreen
    SymbolAttri.Foreground = clBlue
    TableNameAttri.Foreground = clFuchsia
    VariableAttri.Foreground = clPurple
    SQLDialect = sqlMySQL
    left = 591
    top = 152
  end
  object TimerHostUptime: TTimer
    OnTimer = TimerHostUptimeTimer
    left = 687
    top = 101
  end
  object popupDataGrid: TPopupMenu
    Images = ImageListMain
    OnPopup = popupDataGridPopup
    left = 200
    top = 248
    object Copy3: TMenuItem
    end
    object Copyselectedrows1: TMenuItem
    end
    object Paste2: TMenuItem
    end
    object DataInsertValue: TMenuItem
      Caption = 'Insert value'
      ImageIndex = 80
      OnClick = DataInsertValueClick
      object setNULL1: TMenuItem
      end
      object InsertSQLfunction1: TMenuItem
      end
      object DataDefaultValue: TMenuItem
        Caption = 'default'
        ImageIndex = 28
        OnClick = InsertValue
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object DataDateTime: TMenuItem
        Caption = 'datetime'
        Hint = 'Insert datetime-value'
        ImageIndex = 80
        OnClick = InsertValue
      end
      object DataDate: TMenuItem
        Caption = 'date'
        Hint = 'Insert date-value'
        ImageIndex = 80
        OnClick = InsertValue
      end
      object DataTime: TMenuItem
        Caption = 'time'
        Hint = 'Insert time-value'
        ImageIndex = 80
        OnClick = InsertValue
      end
      object DataYear: TMenuItem
        Caption = 'year'
        Hint = 'Insert year-value'
        ImageIndex = 80
        OnClick = InsertValue
      end
      object DataUNIXtimestamp: TMenuItem
        Caption = 'unix timestamp'
        Hint = 'Insert UNIX timestamp'
        ImageIndex = 80
        OnClick = InsertValue
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object DataGUID: TMenuItem
        Caption = 'GUID'
        ImageIndex = 112
        OnClick = InsertValue
      end
      object DataGUIDwobraces: TMenuItem
        Caption = 'GUID without braces'
        ImageIndex = 112
        OnClick = InsertValue
      end
    end
    object InsertfilesintoBLOBfields3: TMenuItem
    end
    object SaveBLOBtofile1: TMenuItem
    end
    object Gridviewoptions1: TMenuItem
      Caption = 'Grid view options'
      object hisisaUNIXtimestampcolumn1: TMenuItem
        AutoCheck = True
      end
      object ViewasHTML1: TMenuItem
      end
      object ViewbinarydataastextinsteadofHEX2: TMenuItem
        AutoCheck = True
      end
      object Datapreferences1: TMenuItem
      end
    end
    object N4a: TMenuItem
      Caption = '-'
    end
    object Insert1: TMenuItem
    end
    object Duplicaterow1: TMenuItem
    end
    object DataPost1: TMenuItem
    end
    object Cancelediting1: TMenuItem
    end
    object Delete1: TMenuItem
    end
    object N6a: TMenuItem
      Caption = '-'
    end
    object Resetsorting1: TMenuItem
    end
    object menuQuickFilter: TMenuItem
      Caption = 'Quick Filter'
      ImageIndex = 53
      object QF1: TMenuItem
        Caption = 'Column = Value'
        ImageIndex = 61
        OnClick = QuickFilterClick
      end
      object QF2: TMenuItem
        Caption = 'Column != Value'
        ImageIndex = 61
        OnClick = QuickFilterClick
      end
      object QF3: TMenuItem
        Caption = 'Column > Value'
        ImageIndex = 61
        OnClick = QuickFilterClick
      end
      object QF4: TMenuItem
        Caption = 'Column < Value'
        ImageIndex = 61
        OnClick = QuickFilterClick
      end
      object QF5: TMenuItem
        Caption = 'Column LIKE Value%'
        ImageIndex = 61
        OnClick = QuickFilterClick
      end
      object QF6: TMenuItem
        Caption = 'Column LIKE %Value'
        ImageIndex = 61
        OnClick = QuickFilterClick
      end
      object QF7: TMenuItem
        Caption = 'Column LIKE %Value%'
        ImageIndex = 61
        OnClick = QuickFilterClick
      end
      object QFvalues: TMenuItem
        Caption = 'More values ...'
        ImageIndex = 61
        OnClick = QFvaluesClick
      end
      object N11a: TMenuItem
        Caption = '-'
      end
      object QF8: TMenuItem
        Tag = 1
        Caption = 'Column = ...'
        ImageIndex = 58
        OnClick = QuickFilterClick
      end
      object QF9: TMenuItem
        Tag = 1
        Caption = 'Column != ...'
        ImageIndex = 58
        OnClick = QuickFilterClick
      end
      object QF10: TMenuItem
        Tag = 1
        Caption = 'Column > ...'
        ImageIndex = 58
        OnClick = QuickFilterClick
      end
      object QF11: TMenuItem
        Tag = 1
        Caption = 'Column < ...'
        ImageIndex = 58
        OnClick = QuickFilterClick
      end
      object QF12: TMenuItem
        Tag = 1
        Caption = 'Column like ...'
        ImageIndex = 58
        OnClick = QuickFilterClick
      end
      object QF13: TMenuItem
        Caption = 'Column IS NULL'
        ImageIndex = 58
        OnClick = QuickFilterClick
      end
      object QF14: TMenuItem
        Caption = 'Column IS NOT NULL'
        ImageIndex = 58
        OnClick = QuickFilterClick
      end
      object N7a: TMenuItem
        Caption = '-'
      end
      object QF15: TMenuItem
        Caption = 'Column = CLIPBOARD'
        ImageIndex = 4
        OnClick = QuickFilterClick
      end
      object QF16: TMenuItem
        Caption = 'Column != CLIPBOARD'
        ImageIndex = 4
        OnClick = QuickFilterClick
      end
      object QF17: TMenuItem
        Caption = 'Column > CLIPBOARD'
        ImageIndex = 4
        OnClick = QuickFilterClick
      end
      object QF18: TMenuItem
        Caption = 'Column < CLIPBOARD'
        ImageIndex = 4
        OnClick = QuickFilterClick
      end
      object QF19: TMenuItem
        Caption = 'Column LIKE %CLIPBOARD%'
        ImageIndex = 4
        OnClick = QuickFilterClick
      end
      object QF20: TMenuItem
        Caption = 'Column IN ()'
        ImageIndex = 4
        OnClick = QuickFilterClick
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object DropFilter1: TMenuItem
      end
    end
    object N9a: TMenuItem
      Caption = '-'
    end
    object Exportdata2: TMenuItem
    end
    object menuSQLhelpData: TMenuItem
    end
    object Refresh3: TMenuItem
    end
  end
  object TimerConnected: TTimer
    OnTimer = TimerConnectedTimer
    left = 687
    top = 245
  end
  object popupSqlLog: TPopupMenu
    Images = ImageListMain
    OnPopup = popupSqlLogPopup
    left = 272
    top = 200
    object Copy1: TMenuItem
    end
    object Copylinetonewquerytab1: TMenuItem
      Caption = 'Copy line to new query tab'
      ImageIndex = 132
      OnClick = Copylinetonewquerytab1Click
    end
    object Clear2: TMenuItem
    end
    object menuLogHorizontalScrollbar: TMenuItem
      AutoCheck = True
    end
    object Saveastextfile1: TMenuItem
    end
    object menuLogToFile: TMenuItem
      Caption = 'Log to file'
      OnClick = menuLogToFileClick
    end
    object menuOpenLogFolder: TMenuItem
      Caption = 'Open log folder ...'
      Enabled = False
      ImageIndex = 51
      OnClick = menuOpenLogFolderClick
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object Loggingpreferences1: TMenuItem
    end
  end
  object TimerRefresh: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = actRefreshExecute
    left = 688
    top = 197
  end
  object popupListHeader: TVTHeaderPopupMenu
    Images = ImageListMain
    left = 424
    top = 208
  end
  object popupQuery: TPopupMenu
    Images = ImageListMain
    OnPopup = popupQueryPopup
    left = 344
    top = 104
    object MenuRun: TMenuItem
    end
    object MenuRunSelection: TMenuItem
    end
    object MenuRunLine: TMenuItem
    end
    object menuQueryExplain: TMenuItem
      Caption = 'Explain'
      OnClick = menuQueryExplainClick
      object Explaincurrentquery1: TMenuItem
      end
      object Explainanalyzerforcurrentquery1: TMenuItem
      end
    end
    object MenuItem1: TMenuItem
      Caption = '-'
    end
    object menuQueryCut: TMenuItem
    end
    object menucopy: TMenuItem
    end
    object menupaste: TMenuItem
    end
    object menuQuerySelectall: TMenuItem
    end
    object menuclear: TMenuItem
    end
    object ReformatSQL1: TMenuItem
    end
    object Uncomment1: TMenuItem
    end
    object N22: TMenuItem
      Caption = '-'
    end
    object MenuFind: TMenuItem
    end
    object MenuReplace: TMenuItem
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object menuload: TMenuItem
    end
    object menuSaveSQL: TMenuItem
    end
    object menusave: TMenuItem
    end
    object menuSaveSelectionToFile: TMenuItem
    end
    object menuSaveAsSnippet: TMenuItem
    end
    object menuSaveSelectionAsSnippet: TMenuItem
    end
    object N23: TMenuItem
      Caption = '-'
    end
    object menuSQLhelp2: TMenuItem
    end
    object menuQueryInsertFunction: TMenuItem
      Caption = 'Insert function'
      ImageIndex = 13
    end
  end
  object popupQueryHelpers: TPopupMenu
    Images = ImageListMain
    left = 344
    top = 152
    object menuInsertSnippetAtCursor: TMenuItem
      Caption = 'Insert at cursor'
      Default = True
      Enabled = False
      ImageIndex = 52
      OnClick = menuInsertSnippetAtCursorClick
    end
    object menuLoadSnippet: TMenuItem
      Caption = 'Load'
      Enabled = False
      ImageIndex = 52
      OnClick = menuLoadSnippetClick
    end
    object menuDeleteSnippet: TMenuItem
      Caption = 'Delete ...'
      Enabled = False
      ImageIndex = 26
      ShortCut = 46
      OnClick = menuDeleteSnippetClick
    end
    object menuExplore: TMenuItem
      Caption = 'Explore folder'
      Enabled = False
      ImageIndex = 51
      OnClick = menuExploreClick
    end
    object menuHelp: TMenuItem
    end
    object menuClearQueryHistory: TMenuItem
      Caption = 'Clear query history ...'
      Enabled = False
      OnClick = menuClearQueryHistoryClick
    end
    object menuQueryHelpersGenerateSelect: TMenuItem
      Caption = 'Generate SELECT ...'
      Enabled = False
      ImageIndex = 114
      OnClick = menuQueryHelpersGenerateStatementClick
    end
    object menuQueryHelpersGenerateInsert: TMenuItem
      Caption = 'Generate INSERT ...'
      Enabled = False
      ImageIndex = 114
      OnClick = menuQueryHelpersGenerateStatementClick
    end
    object menuQueryHelpersGenerateUpdate: TMenuItem
      Caption = 'Generate UPDATE ...'
      Enabled = False
      ImageIndex = 114
      OnClick = menuQueryHelpersGenerateStatementClick
    end
    object menuQueryHelpersGenerateDelete: TMenuItem
      Caption = 'Generate DELETE ...'
      Enabled = False
      ImageIndex = 114
      OnClick = menuQueryHelpersGenerateStatementClick
    end
  end
  object popupFilter: TPopupMenu
    Images = ImageListMain
    left = 344
    top = 248
    object menuFilterCopy: TMenuItem
    end
    object menuFilterPaste: TMenuItem
    end
    object menuFilterClear: TMenuItem
    end
    object N8a: TMenuItem
      Caption = '-'
    end
    object menuFilterApply: TMenuItem
    end
    object menuRecentFilters: TMenuItem
      Caption = 'Recent filters'
      Enabled = False
      ImageIndex = 53
    end
    object menuFilterInsertFunction: TMenuItem
      Caption = 'Insert function'
      ImageIndex = 13
    end
  end
  object popupRefresh: TPopupMenu
    Images = ImageListMain
    left = 200
    top = 200
    object Fullstatusrefresh1: TMenuItem
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object menuAutoRefresh: TMenuItem
      Caption = 'Auto refresh'
      ShortCut = 16500
      OnClick = AutoRefreshToggle
    end
    object menuAutoRefreshSetInterval: TMenuItem
      Caption = 'Set interval ...'
      OnClick = AutoRefreshSetInterval
    end
  end
  object popupMainTabs: TPopupMenu
    Images = ImageListMain
    AutoPopup = False
    OnPopup = popupMainTabsPopup
    left = 200
    top = 152
    object menuNewQueryTab: TMenuItem
    end
    object menuCloseTab: TMenuItem
      Caption = 'Close query tab'
      ImageIndex = 133
      OnClick = menuCloseQueryTab
    end
  end
  object TimerFilterVT: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerFilterVTTimer
    left = 688
    top = 149
  end
  object popupExecuteQuery: TPopupMenu
    Images = ImageListMain
    left = 272
    top = 248
    object Run1: TMenuItem
    end
    object RunSelection1: TMenuItem
    end
    object Runcurrentquery1: TMenuItem
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Sendqueriesonebyone1: TMenuItem
      AutoCheck = True
    end
    object Runbatchinonego1: TMenuItem
      AutoCheck = True
    end
  end
end
