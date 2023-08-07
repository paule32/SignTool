object Frame2: TFrame2
  Left = 0
  Top = 0
  Width = 233
  Height = 399
  TabOrder = 0
  object JvOutlookBar1: TJvOutlookBar
    Left = 0
    Top = 0
    Width = 233
    Height = 399
    Align = alClient
    Pages = <
      item
        Buttons = <>
        ButtonSize = olbsLarge
        Caption = 'CA-Root key'
        Color = clWhite
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
      end
      item
        Buttons = <>
        ButtonSize = olbsLarge
        Caption = 'JvOutlookBarPage1'
        DownFont.Charset = DEFAULT_CHARSET
        DownFont.Color = clWindowText
        DownFont.Height = -19
        DownFont.Name = 'Consolas'
        DownFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Consolas'
        Font.Style = []
        ParentColor = True
        TopButtonIndex = 0
      end>
    PageButtonHeight = 32
    OnPageChange = JvOutlookBar1PageChange
    Color = clWhite
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
    Width = 199
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
end
