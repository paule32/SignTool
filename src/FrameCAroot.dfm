object CArootFrame: TCArootFrame
  Left = 0
  Top = 0
  Width = 233
  Height = 427
  Color = 13303807
  ParentColor = False
  TabOrder = 0
  object JvOutlookBar1: TJvOutlookBar
    Left = 0
    Top = 0
    Width = 233
    Height = 427
    Align = alClient
    Pages = <
      item
        Buttons = <>
        ButtonSize = olbsLarge
        Caption = 'CA-Root key'
        Color = 13303807
        DownFont.Charset = DEFAULT_CHARSET
        DownFont.Color = clWindowText
        DownFont.Height = -16
        DownFont.Name = 'MS Sans Serif'
        DownFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = True
        TopButtonIndex = 0
      end>
    PageButtonHeight = 32
    OnPageChange = JvOutlookBar1PageChange
    Color = 13303807
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object TreeView1: TTreeView
    Left = 2
    Top = 34
    Width = 215
    Height = 231
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    Indent = 21
    ParentFont = False
    TabOrder = 1
    Items.Data = {
      02000000210000000000000000000000FFFFFFFFFFFFFFFF0000000001000000
      0864656D6F2E636F6D260000000000000000000000FFFFFFFFFFFFFFFF000000
      00000000000D6B65792066696C65206E616D65240000000000000000000000FF
      FFFFFFFFFFFFFF00000000000000000B6578616D706C652E636F6D}
  end
  object Edit_CA_Name: TEdit
    Left = 8
    Top = 288
    Width = 209
    Height = 27
    Hint = 'Type in your new CA-Root Domain'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnEnter = Edit_CA_NameEnter
    OnExit = Edit_CA_NameExit
  end
  object AddCA_Button: TButton
    Left = 8
    Top = 328
    Width = 209
    Height = 33
    Caption = 'Create New Domain'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = AddCA_ButtonClick
  end
  object DeleteCA_Button: TButton
    Left = 8
    Top = 376
    Width = 209
    Height = 33
    Caption = 'Delete selected Domain'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = DeleteCA_ButtonClick
  end
end
