object connform: Tconnform
  Left = 288
  Height = 400
  Top = 129
  Width = 665
  BorderIcons = [biSystemMenu, biHelp]
  Caption = 'Session manager'
  ClientHeight = 400
  ClientWidth = 665
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 665
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ParentFont = True
  ShowHint = True
  LCLVersion = '2.1.0.0'
  object splitterMain: TSplitter
    Cursor = crSizeWE
    Left = 200
    Height = 400
    Top = 0
    Width = 8
    OnMoved = splitterMainMoved
  end
  object btnSave: TButton
    Left = 64
    Height = 25
    Top = 367
    Width = 50
    Anchors = [akLeft, akBottom]
    Caption = 'Save'
    OnClick = btnSaveClick
    TabOrder = 2
  end
  object btnOpen: TButton
    Left = 405
    Height = 25
    Top = 367
    Width = 80
    Anchors = [akRight, akBottom]
    Caption = 'Open'
    Default = True
    Enabled = False
    OnClick = btnOpenClick
    TabOrder = 4
  end
  object btnCancel: TButton
    Left = 491
    Height = 25
    Top = 367
    Width = 80
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object ListSessions: TVirtualStringTree
    Left = 0
    Height = 400
    Top = 0
    Width = 200
    Align = alLeft
    Constraints.MinWidth = 200
    DragMode = dmAutomatic
    Header.AutoSizeIndex = -1
    Header.Columns = <    
      item
        Position = 0
        Text = 'Session name'
        Width = 163
      end    
      item
        Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coAllowFocus]
        Position = 1
        Text = 'Host'
      end    
      item
        Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coAllowFocus]
        Position = 2
        Text = 'User'
      end    
      item
        Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coAllowFocus]
        Position = 3
        Text = 'Version'
      end    
      item
        Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coAllowFocus]
        Position = 4
        Text = 'Last connect'
      end    
      item
        Alignment = taRightJustify
        Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coAllowFocus]
        Position = 5
        Text = 'Counter'
      end    
      item
        Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coAllowFocus]
        Position = 6
        Text = 'Comment'
        Width = 35
      end>
    Header.Options = [hoAutoResize, hoColumnResize, hoDblClickResize, hoDrag, hoHotTrack, hoShowSortGlyphs, hoVisible]
    Header.ParentFont = True
    Header.PopupMenu = MainForm.popupListHeader
    Header.SortColumn = 0
    HintMode = hmTooltip
    Images = MainForm.ImageListMain
    IncrementalSearch = isAll
    PopupMenu = popupSessions
    TabOrder = 0
    TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScrollOnExpand, toAutoSort, toAutoTristateTracking]
    TreeOptions.MiscOptions = [toEditable, toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning, toFullRowDrag]
    TreeOptions.PaintOptions = [toHotTrack, toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toThemeAware, toUseBlendedImages, toUseExplorerTheme, toHideTreeLinesIfThemed]
    TreeOptions.SelectionOptions = [toFullRowSelect, toRightClickSelect]
    OnCreateEditor = ListSessionsCreateEditor
    OnDblClick = btnOpenClick
    OnDragOver = ListSessionsDragOver
    OnFocusChanged = ListSessionsFocusChanged
    OnFocusChanging = ListSessionsFocusChanging
    OnGetText = ListSessionsGetText
    OnGetImageIndex = ListSessionsGetImageIndex
    OnGetNodeDataSize = ListSessionsGetNodeDataSize
    OnNewText = ListSessionsNewText
    OnStructureChange = ListSessionsStructureChange
  end
  object btnNew: TButton
    Left = 8
    Height = 25
    Top = 367
    Width = 50
    Anchors = [akLeft, akBottom]
    Caption = 'New'
    OnClick = btnNewClick
    TabOrder = 1
  end
  object btnDelete: TButton
    Left = 120
    Height = 25
    Top = 367
    Width = 50
    Anchors = [akLeft, akBottom]
    Caption = 'Delete'
    OnClick = btnDeleteClick
    TabOrder = 3
  end
  object PageControlDetails: TPageControl
    Left = 208
    Height = 400
    Top = 0
    Width = 457
    ActivePage = tabStart
    Align = alClient
    Images = MainForm.ImageListMain
    TabIndex = 0
    TabOrder = 7
    object tabStart: TTabSheet
      Caption = 'Start'
      ClientHeight = 369
      ClientWidth = 447
      ImageIndex = 112
      object lblHelp: TLabel
        Left = 0
        Height = 161
        Top = 0
        Width = 447
        Align = alTop
        AutoSize = False
        Caption = 'lblHelp'
        ParentColor = False
        WordWrap = True
      end
      object btnImportSettings: TButton
        Left = 10
        Height = 25
        Top = 184
        Width = 159
        Caption = 'Import settings ...'
        OnClick = btnImportSettingsClick
        TabOrder = 0
      end
    end
    object tabSettings: TTabSheet
      Caption = 'Settings'
      ClientHeight = 369
      ClientWidth = 447
      ImageIndex = 39
      object lblPort: TLabel
        Left = 3
        Height = 13
        Top = 168
        Width = 24
        Caption = 'Port:'
        FocusControl = editPort
        ParentColor = False
      end
      object lblPassword: TLabel
        Left = 3
        Height = 13
        Top = 143
        Width = 50
        Caption = 'Password:'
        FocusControl = editPassword
        ParentColor = False
      end
      object lblHost: TLabel
        Left = 3
        Height = 13
        Top = 45
        Width = 72
        Caption = 'Hostname / IP:'
        FocusControl = editHost
        ParentColor = False
      end
      object lblUsername: TLabel
        Left = 3
        Height = 13
        Top = 118
        Width = 26
        Caption = 'User:'
        FocusControl = editUsername
        ParentColor = False
      end
      object lblNetworkType: TLabel
        Left = 3
        Height = 13
        Top = 12
        Width = 69
        Caption = 'Network type:'
        ParentColor = False
      end
      object lblDatabase: TLabel
        Left = 3
        Height = 13
        Top = 216
        Width = 55
        Caption = 'Databases:'
        ParentColor = False
      end
      object lblComment: TLabel
        Left = 3
        Height = 13
        Top = 241
        Width = 49
        Caption = 'Comment:'
        ParentColor = False
      end
      object chkCompressed: TCheckBox
        Left = 120
        Height = 17
        Top = 190
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        Caption = 'Compressed client/server protocol'
        OnClick = Modification
        TabOrder = 8
      end
      object editPort: TEdit
        Left = 120
        Height = 21
        Top = 165
        Width = 57
        OnChange = Modification
        TabOrder = 6
        Text = '0'
      end
      object updownPort: TUpDown
        Left = 177
        Height = 21
        Top = 165
        Width = 16
        Associate = editPort
        Max = -1
        Min = 0
        Position = 0
        TabOrder = 7
        Thousands = False
        Wrap = True
      end
      object editPassword: TEdit
        Left = 120
        Height = 21
        Top = 140
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        EchoMode = emPassword
        OnChange = Modification
        PasswordChar = '*'
        TabOrder = 5
      end
      object editUsername: TEdit
        Left = 120
        Height = 21
        Top = 115
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        OnChange = Modification
        TabOrder = 4
      end
      object editHost: TEdit
        Left = 120
        Height = 21
        Top = 42
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        OnChange = editHostChange
        TabOrder = 1
      end
      object comboNetType: TComboBox
        Left = 120
        Height = 21
        Top = 9
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        DropDownCount = 12
        ItemHeight = 0
        ItemIndex = 0
        Items.Strings = (
          'TCP/IP'
          'Named pipe'
          'SSH tunnel'
          'MSSQL'
        )
        OnChange = comboNetTypeChange
        Style = csDropDownList
        TabOrder = 0
        Text = 'TCP/IP'
      end
      object chkLoginPrompt: TCheckBox
        Left = 120
        Height = 17
        Top = 69
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        Caption = 'Prompt for credentials'
        OnClick = chkLoginPromptClick
        TabOrder = 2
      end
      object chkWindowsAuth: TCheckBox
        Left = 120
        Height = 17
        Top = 92
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        Caption = 'Use Windows authentication'
        Enabled = False
        OnClick = chkLoginPromptClick
        TabOrder = 3
      end
      object memoComment: TMemo
        Left = 120
        Height = 35
        Top = 238
        Width = 294
        Anchors = [akTop, akLeft, akRight, akBottom]
        OnChange = Modification
        ScrollBars = ssVertical
        TabOrder = 9
      end
      object editDatabases: TEditButton
          Left = 120
          Top = 213
          Width = 294
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Images = MainForm.ImageListMain
          ImageIndex = 75
          Visible = True
          TabOrder = 9
          TextHint = 'Separated by semicolon'
          OnChange = Modification
          OnButtonClick = editDatabasesRightButtonClick
        end
    end
    object tabSSHtunnel: TTabSheet
      Caption = 'SSH tunnel'
      ClientHeight = 369
      ClientWidth = 447
      ImageIndex = 147
      object lblSSHLocalPort: TLabel
        Left = 3
        Height = 13
        Top = 190
        Width = 51
        Caption = 'Local port:'
        FocusControl = editSSHlocalport
        ParentColor = False
      end
      object lblSSHUser: TLabel
        Left = 3
        Height = 13
        Top = 82
        Width = 52
        Caption = 'Username:'
        FocusControl = editSSHUser
        ParentColor = False
      end
      object lblSSHPassword: TLabel
        Left = 3
        Height = 13
        Top = 109
        Width = 50
        Caption = 'Password:'
        FocusControl = editSSHPassword
        ParentColor = False
      end
      object lblSSHPlinkExe: TLabel
        Left = 3
        Height = 13
        Top = 12
        Width = 87
        Caption = 'plink.exe location:'
        ParentColor = False
      end
      object lblSSHhost: TLabel
        Left = 3
        Height = 13
        Top = 55
        Width = 81
        Caption = 'SSH host + port:'
        FocusControl = editSSHhost
        ParentColor = False
      end
      object lblSSHkeyfile: TLabel
        Left = 3
        Height = 13
        Top = 163
        Width = 75
        Caption = 'Private key file:'
        ParentColor = False
      end
      object lblDownloadPlink: TLabel
        Cursor = crHandPoint
        Left = 120
        Height = 13
        Hint = 'http://www.chiark.greenend.org.uk/~sgtatham/putty/'
        Top = 33
        Width = 93
        Caption = 'Download plink.exe'
        ParentColor = False
        OnClick = lblDownloadPlinkClick
      end
      object lblPlinkTimeout: TLabel
        Left = 3
        Height = 13
        Top = 136
        Width = 86
        Caption = 'plink.exe timeout:'
        ParentColor = False
      end
      object editSSHlocalport: TEdit
        Left = 120
        Height = 21
        Top = 187
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        NumbersOnly = True
        OnChange = Modification
        TabOrder = 0
        Text = 'editSSHlocalport'
      end
      object editSSHUser: TEdit
        Left = 120
        Height = 21
        Top = 79
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        OnChange = Modification
        TabOrder = 3
        Text = 'editSSHUser'
        TextHint = 'Your secure shell username'
      end
      object editSSHPassword: TEdit
        Left = 120
        Height = 21
        Top = 106
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        EchoMode = emPassword
        OnChange = Modification
        PasswordChar = '*'
        TabOrder = 4
        Text = 'editSSHPassword'
        TextHint = 'Your secure shell password'
      end
      object editSSHPlinkExe: TEditButton
          Left = 120
          Top = 9
          Width = 294
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Images = MainForm.ImageListMain
          ImageIndex = 51
          Visible = True
          TabOrder = 0
          Text = 'editSSHPlinkExe'
          TextHint = 'Doubleclick to select plink.exe ...'
          OnChange = editSSHPlinkExeChange
          OnDblClick = PickFile
          OnButtonClick = PickFile
        end
      object editSSHhost: TEdit
        Left = 120
        Height = 21
        Top = 52
        Width = 230
        Anchors = [akTop, akLeft, akRight]
        OnChange = Modification
        TabOrder = 1
        Text = 'editSSHhost'
      end
      object editSSHport: TEdit
        Left = 356
        Height = 21
        Top = 52
        Width = 58
        Anchors = [akTop, akRight]
        NumbersOnly = True
        OnChange = Modification
        TabOrder = 2
        Text = 'editSSHport'
      end
      object editSSHPrivateKey: TEditButton
          Left = 120
          Top = 160
          Width = 294
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Images = MainForm.ImageListMain
          ImageIndex = 51
          Visible = True
          TabOrder = 7
          Text = 'editSSHPrivateKey'
          TextHint = 'PuTTY private key (*.ppk)'
          OnChange = Modification
          OnDblClick = PickFile
          OnButtonClick = PickFile
        end
      object editSSHTimeout: TEdit
        Left = 120
        Height = 21
        Top = 133
        Width = 60
        OnChange = Modification
        TabOrder = 5
        Text = '0'
      end
      object updownSSHTimeout: TUpDown
        Left = 180
        Height = 21
        Top = 133
        Width = 17
        Associate = editSSHTimeout
        Min = 0
        Position = 0
        TabOrder = 6
        Wrap = True
      end
    end
    object tabAdvanced: TTabSheet
      Caption = 'Advanced'
      ClientHeight = 369
      ClientWidth = 447
      ImageIndex = 98
      object lblSSLPrivateKey: TLabel
        Left = 3
        Height = 13
        Top = 39
        Width = 78
        Caption = 'SSL private key:'
        ParentColor = False
      end
      object lblSSLCACertificate: TLabel
        Left = 3
        Height = 13
        Top = 68
        Width = 89
        Caption = 'SSL CA certificate:'
        ParentColor = False
      end
      object lblSSLCertificate: TLabel
        Left = 3
        Height = 13
        Top = 95
        Width = 72
        Caption = 'SSL certificate:'
        ParentColor = False
      end
      object lblStartupScript: TLabel
        Left = 3
        Height = 13
        Top = 168
        Width = 69
        Caption = 'Startup script:'
        ParentColor = False
      end
      object lblQueryTimeout: TLabel
        Left = 3
        Height = 13
        Top = 195
        Width = 73
        Caption = 'Query timeout:'
        ParentColor = False
      end
      object lblSSLcipher: TLabel
        Left = 3
        Height = 13
        Top = 120
        Width = 53
        Caption = 'SSL cipher:'
        ParentColor = False
      end
      object lblKeepAlive: TLabel
        Left = 3
        Height = 13
        Top = 224
        Width = 106
        Caption = 'Ping every X seconds:'
        ParentColor = False
      end
      object editSSLPrivateKey: TEditButton
          Left = 120
          Top = 36
          Width = 294
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Images = MainForm.ImageListMain
          ImageIndex = 51
          Visible = True
          TabOrder = 1
          TextHint = 'Path to key file'
          OnChange = Modification
          OnDblClick = PickFile
          OnButtonClick = PickFile
        end
        object editSSLCACertificate: TEditButton
          Left = 120
          Top = 65
          Width = 294
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Images = MainForm.ImageListMain
          ImageIndex = 51
          Visible = True
          TabOrder = 2
          TextHint = 'Path to certificate authority file'
          OnChange = Modification
          OnDblClick = PickFile
          OnButtonClick = PickFile
        end
        object editSSLCertificate: TEditButton
          Left = 120
          Top = 92
          Width = 294
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Images = MainForm.ImageListMain
          ImageIndex = 51
          Visible = True
          TabOrder = 3
          TextHint = 'Path to certificate file'
          OnChange = Modification
          OnDblClick = PickFile
          OnButtonClick = PickFile
        end
      object chkWantSSL: TCheckBox
        Left = 120
        Height = 17
        Top = 13
        Width = 313
        Anchors = [akTop, akLeft, akRight]
        Caption = 'Use SSL'
        OnClick = Modification
        TabOrder = 0
      end
      object chkLocalTimeZone: TCheckBox
        Left = 120
        Height = 17
        Hint = 'Use your client time zone in date/time SQL functions, e.g. NOW(), for MySQL 4.1.3+'
        Top = 246
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        Caption = 'Use own client time zone'
        OnClick = Modification
        TabOrder = 1
      end
      object editStartupScript: TEditButton
          Left = 120
          Top = 165
          Width = 294
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Images = MainForm.ImageListMain
          ImageIndex = 51
          Visible = True
          TabOrder = 5
          OnChange = Modification
          OnDblClick = PickFile
          OnButtonClick = PickFile
        end
      object chkFullTableStatus: TCheckBox
        Left = 120
        Height = 17
        Hint = 'Disable to speed up internal queries on databases with many InnoDB tables'
        Top = 269
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        Caption = 'Get full table status'
        OnClick = Modification
        TabOrder = 2
      end
      object editQueryTimeout: TEdit
        Left = 120
        Height = 21
        Top = 192
        Width = 90
        NumbersOnly = True
        OnChange = Modification
        TabOrder = 5
        Text = '0'
      end
      object updownQueryTimeout: TUpDown
        Left = 210
        Height = 21
        Top = 192
        Width = 16
        Associate = editQueryTimeout
        Max = -2
        Min = 0
        Position = 0
        TabOrder = 7
        Wrap = True
      end
      object editSSLcipher: TEdit
        Left = 120
        Height = 21
        Top = 119
        Width = 294
        Anchors = [akTop, akLeft, akRight]
        OnChange = Modification
        TabOrder = 3
        TextHint = 'List of permissible ciphers to use for SSL encryption'
      end
      object editKeepAlive: TEdit
        Left = 120
        Height = 21
        Top = 219
        Width = 90
        OnChange = Modification
        TabOrder = 4
        Text = '0'
      end
      object updownKeepAlive: TUpDown
        Left = 210
        Height = 21
        Top = 219
        Width = 16
        Associate = editKeepAlive
        Max = 20864
        Min = 0
        Position = 0
        TabOrder = 6
      end
    end
    object tabStatistics: TTabSheet
      Caption = 'Statistics'
      ClientHeight = 369
      ClientWidth = 447
      ImageIndex = 145
      object lblLastConnectLeft: TLabel
        Left = 3
        Height = 13
        Top = 31
        Width = 65
        Caption = 'Last connect:'
        ParentColor = False
      end
      object lblCounterLeft: TLabel
        Left = 3
        Height = 13
        Top = 50
        Width = 100
        Caption = 'Successful connects:'
        ParentColor = False
      end
      object lblCreatedLeft: TLabel
        Left = 3
        Height = 13
        Top = 12
        Width = 43
        Caption = 'Created:'
        ParentColor = False
      end
      object lblCreatedRight: TLabel
        Left = 204
        Height = 13
        Top = 12
        Width = 5
        Caption = '?'
        ParentColor = False
      end
      object lblCounterRight1: TLabel
        Left = 204
        Height = 13
        Top = 50
        Width = 5
        Caption = '?'
        ParentColor = False
      end
      object lblLastConnectRight: TLabel
        Left = 204
        Height = 13
        Top = 31
        Width = 5
        Caption = '?'
        ParentColor = False
      end
      object lblCounterRight2: TLabel
        Left = 204
        Height = 13
        Top = 69
        Width = 5
        Caption = '?'
        ParentColor = False
      end
      object lblCounterLeft2: TLabel
        Left = 3
        Height = 13
        Top = 69
        Width = 112
        Caption = 'Unsuccessful connects:'
        ParentColor = False
      end
    end
  end
  object btnMore: TButton
    Left = 577
    Height = 25
    Top = 367
    Width = 80
    Anchors = [akRight, akBottom]
    Caption = 'More'
    OnClick = btnMoreClick
    TabOrder = 6
  end
  object popupSessions: TPopupMenu
    Images = MainForm.ImageListMain
    left = 23
    top = 83
    object menuRename: TMenuItem
      Caption = 'Rename'
      Enabled = False
      ImageIndex = 58
      ShortCut = 113
      OnClick = menuRenameClick
    end
    object menuSave: TMenuItem
      Caption = 'Save'
      ImageIndex = 10
      ShortCut = 16467
      OnClick = btnSaveClick
    end
    object menuSaveAs: TMenuItem
      Caption = 'Save as ...'
      ImageIndex = 10
      ShortCut = 123
      OnClick = btnSaveAsClick
    end
    object menuDelete: TMenuItem
      Caption = 'Delete'
      ImageIndex = 26
      ShortCut = 46
      OnClick = btnDeleteClick
    end
    object menuContextNewSessionInFolder: TMenuItem
      Caption = 'New session'
      ImageIndex = 72
      OnClick = btnNewClick
    end
    object menuContextNewFolderInFolder: TMenuItem
      Caption = 'New folder'
      ImageIndex = 174
      OnClick = btnNewClick
    end
  end
  object TimerStatistics: TTimer
    Interval = 60000
    OnTimer = TimerStatisticsTimer
    left = 24
    top = 35
  end
  object timerSettingsImport: TTimer
    Enabled = False
    OnTimer = timerSettingsImportTimer
    left = 110
    top = 35
  end
  object popupNew: TPopupMenu
    Images = MainForm.ImageListMain
    left = 109
    top = 82
    object menuNewSessionInRoot: TMenuItem
      Caption = 'Session in root folder'
      ImageIndex = 72
      OnClick = btnNewClick
    end
    object menuNewSessionInFolder: TMenuItem
      Caption = 'Session in selected folder'
      ImageIndex = 72
      OnClick = btnNewClick
    end
    object menuNewFolderInRoot: TMenuItem
      Caption = 'Folder in root folder'
      ImageIndex = 174
      OnClick = btnNewClick
    end
    object menuNewFolderInFolder: TMenuItem
      Caption = 'Folder in selected folder'
      ImageIndex = 174
      OnClick = btnNewClick
    end
  end
  object popupMore: TPopupMenu
    Images = MainForm.ImageListMain
    left = 24
    top = 144
    object Preferences1: TMenuItem
    end
    object Checkforupdates1: TMenuItem
    end
    object Importsettingsfile1: TMenuItem
    end
    object Exportsettingsfile1: TMenuItem
    end
    object menuMoreGeneralHelp: TMenuItem
    end
    object About1: TMenuItem
    end
  end
end
