object Frame2: TFrame2
  Left = 0
  Top = 0
  Width = 653
  Height = 530
  TabOrder = 0
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 653
    Height = 530
    Align = alClient
    TabOrder = 0
    object JvWizard1: TJvWizard
      Left = 0
      Top = 0
      Width = 649
      Height = 526
      ActivePage = JvWizardInteriorPage1
      ButtonBarHeight = 50
      ButtonStart.Caption = 'To &Start Page'
      ButtonStart.NumGlyphs = 1
      ButtonStart.Width = 85
      ButtonLast.Caption = 'To &Last Page'
      ButtonLast.NumGlyphs = 1
      ButtonLast.Width = 85
      ButtonBack.Caption = '< &Back'
      ButtonBack.NumGlyphs = 1
      ButtonBack.Width = 75
      ButtonNext.Caption = '&Next >'
      ButtonNext.NumGlyphs = 1
      ButtonNext.Width = 75
      ButtonFinish.Caption = '&Finish'
      ButtonFinish.NumGlyphs = 1
      ButtonFinish.Width = 75
      ButtonCancel.Caption = 'Cancel'
      ButtonCancel.NumGlyphs = 1
      ButtonCancel.ModalResult = 2
      ButtonCancel.Width = 75
      ButtonHelp.Caption = '&Help'
      ButtonHelp.NumGlyphs = 1
      ButtonHelp.Width = 75
      ShowRouteMap = True
      OnHelpButtonClick = JvWizard1HelpButtonClick
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Enabled = False
      Visible = False
      DesignSize = (
        649
        526)
      object JvWizardInteriorPage1: TJvWizardInteriorPage
        Header.Color = clRed
        Header.ParentFont = False
        Header.Title.Color = clYellow
        Header.Title.Text = ' Certificate Tool for dBASE App Sign'
        Header.Title.Anchors = [akLeft, akTop, akRight]
        Header.Title.Font.Charset = DEFAULT_CHARSET
        Header.Title.Font.Color = clWindowText
        Header.Title.Font.Height = -19
        Header.Title.Font.Name = 'MS Sans Serif'
        Header.Title.Font.Style = [fsBold]
        Header.Subtitle.Color = clSilver
        Header.Subtitle.Text = ' Download necassary Tools ...'
        Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
        Header.Subtitle.Font.Charset = DEFAULT_CHARSET
        Header.Subtitle.Font.Color = clWindowText
        Header.Subtitle.Font.Height = -16
        Header.Subtitle.Font.Name = 'Arial'
        Header.Subtitle.Font.Style = []
        Panel.Color = clSilver
        EnabledButtons = [bkLast, bkNext, bkHelp]
        VisibleButtons = [bkNext, bkHelp]
        Color = clBlack
        Caption = 'Download Files'
        OnNextButtonClick = JvWizardInteriorPage1NextButtonClick
        DesignSize = (
          504
          476)
        object Image1: TImage
          Left = 0
          Top = 70
          Width = 504
          Height = 406
          Align = alClient
          Stretch = True
        end
        object SpeedButton1: TSpeedButton
          Left = 434
          Top = 168
          Width = 41
          Height = 41
          Anchors = [akTop, akRight]
          Caption = 'D'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          OnClick = SpeedButton1Click
        end
        object Label2: TLabel
          Left = 0
          Top = 152
          Width = 293
          Height = 19
          Caption = 'Hard Disk Location for download file ...'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object SpeedButton2: TSpeedButton
          Left = 434
          Top = 376
          Width = 41
          Height = 41
          Anchors = [akTop, akRight]
          Caption = 'D'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          OnClick = SpeedButton2Click
        end
        object Label3: TLabel
          Left = 0
          Top = 360
          Width = 143
          Height = 20
          Caption = 'Certificate Store :'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object SpeedButton3: TSpeedButton
          Left = 434
          Top = 112
          Width = 41
          Height = 41
          Anchors = [akTop, akRight]
          Caption = 'D'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          OnClick = SpeedButton3Click
        end
        object Label4: TLabel
          Left = 0
          Top = 328
          Width = 452
          Height = 30
          Caption = 'Downloading, this can take awhile ...'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -26
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label1: TLabel
          Left = 0
          Top = 96
          Width = 159
          Height = 19
          Caption = 'Download Location :'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Edit1: TEdit
          Left = 0
          Top = 120
          Width = 419
          Height = 26
          Anchors = [akLeft, akTop, akRight]
          Constraints.MinWidth = 417
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Visible = False
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
        end
        object Edit2: TEdit
          Left = 0
          Top = 176
          Width = 419
          Height = 26
          Anchors = [akLeft, akTop, akRight]
          Constraints.MinWidth = 417
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = False
          OnEnter = Edit2Enter
          OnExit = Edit2Exit
        end
        object Edit3: TEdit
          Left = 0
          Top = 384
          Width = 419
          Height = 26
          Anchors = [akLeft, akTop, akRight]
          Constraints.MinWidth = 417
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnEnter = Edit3Enter
          OnExit = Edit3Exit
        end
        object Button1: TButton
          Left = 0
          Top = 216
          Width = 113
          Height = 25
          Caption = 'Clear Fields'
          TabOrder = 3
          Visible = False
          OnClick = Button1Click
        end
        object CheckBox1: TCheckBox
          Left = 0
          Top = 256
          Width = 145
          Height = 17
          Caption = 'Don'#39't download'
          Color = 13303807
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
          Visible = False
        end
        object CheckBox2: TCheckBox
          Left = 0
          Top = 280
          Width = 145
          Height = 17
          Caption = 'Don'#39't install'
          Color = 13303807
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          Visible = False
        end
      end
      object JvWizardInteriorPage2: TJvWizardInteriorPage
        Header.Color = clRed
        Header.ParentFont = False
        Header.Title.Color = clYellow
        Header.Title.Text = ' Certificate Tool for dBASE App Sign'
        Header.Title.Anchors = [akLeft, akTop, akRight]
        Header.Title.Font.Charset = DEFAULT_CHARSET
        Header.Title.Font.Color = clWindowText
        Header.Title.Font.Height = -19
        Header.Title.Font.Name = 'MS Sans Serif'
        Header.Title.Font.Style = [fsBold]
        Header.Subtitle.Color = clSilver
        Header.Subtitle.Text = ' Create CA Certificate ...'
        Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
        Header.Subtitle.Font.Charset = DEFAULT_CHARSET
        Header.Subtitle.Font.Color = clWindowText
        Header.Subtitle.Font.Height = -16
        Header.Subtitle.Font.Name = 'MS Sans Serif'
        Header.Subtitle.Font.Style = []
        EnabledButtons = [bkBack, bkFinish, bkHelp]
        VisibleButtons = [bkBack, bkFinish, bkHelp]
        Caption = 'Create Certificate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        object Image2: TImage
          Left = 0
          Top = 70
          Width = 504
          Height = 406
          Align = alClient
          Stretch = True
        end
        object Label5: TLabel
          Left = 0
          Top = 96
          Width = 140
          Height = 20
          Caption = 'CA key file name:'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 0
          Top = 152
          Width = 87
          Height = 20
          Caption = 'Bit Strong:'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel
          Left = 112
          Top = 152
          Width = 86
          Height = 20
          Caption = 'Algorythm:'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object SpeedButton4: TSpeedButton
          Left = 432
          Top = 112
          Width = 41
          Height = 41
          Caption = 'D'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton4Click
        end
        object Edit4: TEdit
          Left = 0
          Top = 120
          Width = 417
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = Edit4Enter
          OnExit = Edit4Exit
        end
        object Edit5: TEdit
          Left = 0
          Top = 176
          Width = 89
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '2048'
          OnEnter = Edit5Enter
          OnExit = Edit5Exit
        end
        object Edit6: TEdit
          Left = 112
          Top = 176
          Width = 89
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'des3'
          OnEnter = Edit6Enter
          OnExit = Edit6Exit
        end
      end
      object JvWizardRouteMapSteps1: TJvWizardRouteMapSteps
        Left = 0
        Top = 0
        Width = 145
        Height = 476
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ActiveStepFormat = '%0:d of %1:d'
        Multiline = True
      end
    end
  end
end
