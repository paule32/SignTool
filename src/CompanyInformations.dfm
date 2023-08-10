object Frame4: TFrame4
  Left = 0
  Top = 0
  Width = 542
  Height = 383
  Color = 10485760
  ParentColor = False
  TabOrder = 0
  DesignSize = (
    542
    383)
  object Panel1: TPanel
    Left = 16
    Top = 16
    Width = 505
    Height = 41
    Alignment = taLeftJustify
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvLowered
    BevelWidth = 3
    Caption = '  Company Informations'
    Color = 13303807
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      505
      41)
    object Label1: TLabel
      Left = 399
      Top = 11
      Width = 82
      Height = 18
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      Caption = '2023-01-02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 16
    Top = 328
    Width = 505
    Height = 41
    Alignment = taLeftJustify
    Anchors = [akLeft, akRight, akBottom]
    BevelInner = bvLowered
    BevelWidth = 3
    Color = 13303807
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      505
      41)
    object Panel4: TPanel
      Left = 16
      Top = 10
      Width = 97
      Height = 22
      Caption = 'Save'
      Color = clLime
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 392
      Top = 10
      Width = 97
      Height = 22
      Anchors = [akTop, akRight]
      Caption = 'Clear'
      Color = clSilver
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 16
    Top = 72
    Width = 505
    Height = 241
    Alignment = taLeftJustify
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvLowered
    BevelWidth = 3
    Color = 13303807
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      505
      241)
    object Label3: TLabel
      Left = 16
      Top = 8
      Width = 68
      Height = 19
      Caption = 'Country:'
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 45
      Height = 19
      Caption = 'State:'
    end
    object Label4: TLabel
      Left = 16
      Top = 120
      Width = 66
      Height = 19
      Caption = 'Locality:'
    end
    object Label5: TLabel
      Left = 16
      Top = 176
      Width = 104
      Height = 19
      Caption = 'Organization:'
    end
    object Label6: TLabel
      Left = 224
      Top = 8
      Width = 105
      Height = 19
      Caption = 'CSR Options:'
    end
    object Label7: TLabel
      Left = 224
      Top = 64
      Width = 56
      Height = 19
      Caption = 'Owner:'
    end
    object Label8: TLabel
      Left = 224
      Top = 120
      Width = 56
      Height = 19
      Caption = 'Phone:'
    end
    object Label9: TLabel
      Left = 224
      Top = 176
      Width = 66
      Height = 19
      Caption = 'Contact:'
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 32
      Width = 153
      Height = 27
      ItemHeight = 19
      TabOrder = 0
      Items.Strings = (
        'US - America'
        'DE - Germany'
        'FR - France')
    end
    object ComboBox2: TComboBox
      Left = 16
      Top = 88
      Width = 153
      Height = 27
      ItemHeight = 19
      TabOrder = 1
      Text = 'ComboBox1'
    end
    object Edit1: TEdit
      Left = 16
      Top = 144
      Width = 153
      Height = 27
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 16
      Top = 200
      Width = 153
      Height = 27
      TabOrder = 3
    end
    object ComboBox3: TComboBox
      Left = 224
      Top = 32
      Width = 113
      Height = 27
      ItemHeight = 19
      TabOrder = 4
      Text = 'ComboBox1'
    end
    object ComboBox4: TComboBox
      Left = 360
      Top = 32
      Width = 113
      Height = 27
      ItemHeight = 19
      TabOrder = 5
      Text = 'ComboBox1'
    end
    object Edit3: TEdit
      Left = 224
      Top = 88
      Width = 249
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 224
      Top = 144
      Width = 249
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 7
    end
    object Edit5: TEdit
      Left = 224
      Top = 200
      Width = 249
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 8
    end
  end
end
