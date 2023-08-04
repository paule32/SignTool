object Form1: TForm1
  Left = 962
  Top = 379
  Width = 705
  Height = 561
  Caption = 'CertTool for dBASE 1.0.0 (c) 2023 by Jens Kallup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = JvMainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 115
  TextHeight = 16
  object JvGradientCaption1: TJvGradientCaption
    Active = False
    Captions = <>
    DefaultFont = False
    FormCaption = 'CertTool for dBASE 1.0.0 (c) 2023 by Jens Kallup'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    StartColor = 4194304
    EndColor = 8404992
    Left = 8
    Top = 48
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 9
    Top = 112
  end
  object JvCreateProcess1: TJvCreateProcess
    Left = 41
    Top = 112
  end
  object JvMainMenu1: TJvMainMenu
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 32
    ImageSize.Width = 0
    Left = 9
    Top = 80
    object File1: TMenuItem
      Caption = 'File'
      object DefaultSettings1: TMenuItem
        Caption = 'Default  Settings'
        OnClick = DefaultSettings1Click
      end
      object ClearFields1: TMenuItem
        Caption = 'Clear Fields'
        OnClick = ClearFields1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object LoadSettings1: TMenuItem
        Caption = 'Load Settings ...'
        OnClick = LoadSettings1Click
      end
      object SaveSettings1: TMenuItem
        Caption = 'Save Settings ...'
        OnClick = SaveSettings1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ExitApplication1: TMenuItem
        Caption = 'Exit Application'
        OnClick = ExitApplication1Click
      end
    end
  end
  object JvOfficeMenuItemPainter1: TJvOfficeMenuItemPainter
    Left = 41
    Top = 80
  end
end
