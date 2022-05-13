object frm_difal: Tfrm_difal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'frm_difal'
  ClientHeight = 329
  ClientWidth = 303
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -3
    Top = 0
    Width = 308
    Height = 56
    TabOrder = 0
    object StaticText2: TStaticText
      Left = 93
      Top = 0
      Width = 132
      Height = 23
      Caption = 'Base de C'#225'lculo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object txt_base_icms_difal: TEdit
      Tag = 5
      Left = 93
      Top = 23
      Width = 132
      Height = 22
      Hint = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TextHint = 'Valor base ICMS'
      OnExit = txt_base_icms_difalExit
      OnKeyPress = txt_base_icms_difalKeyPress
    end
  end
  object Panel2: TPanel
    Left = -3
    Top = 51
    Width = 308
    Height = 142
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 13
      Top = 12
      Width = 89
      Height = 23
      Caption = 'UF Origem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object cb_uf_origem: TComboBox
      Left = 36
      Top = 32
      Width = 50
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TextHint = 'UF Origem'
      OnChange = cb_uf_origemChange
      OnKeyPress = cb_uf_origemKeyPress
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
    end
    object StaticText3: TStaticText
      Left = 13
      Top = 67
      Width = 92
      Height = 23
      Caption = 'UF Destino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object cb_uf_destino: TComboBox
      Left = 36
      Top = 96
      Width = 50
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TextHint = 'UF Destino'
      OnChange = cb_uf_destinoChange
      OnKeyPress = cb_uf_destinoKeyPress
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
    end
    object StaticText4: TStaticText
      Left = 149
      Top = 11
      Width = 140
      Height = 23
      Caption = '%ICMS Estadual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText5: TStaticText
      Left = 118
      Top = 67
      Width = 179
      Height = 23
      Caption = '%ICMS interestadual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object edt_estadual: TEdit
      Tag = 5
      Left = 176
      Top = 39
      Width = 81
      Height = 22
      Hint = 'Categoria'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      TextHint = '% icms Estadual'
      OnExit = edt_estadualExit
      OnKeyPress = edt_estadualKeyPress
    end
    object edt_interestadual: TEdit
      Tag = 5
      Left = 176
      Top = 96
      Width = 81
      Height = 22
      Hint = 'Categoria'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      TextHint = '% icms InterEstadual'
      OnExit = edt_interestadualExit
      OnKeyPress = edt_interestadualKeyPress
    end
  end
  object Panel3: TPanel
    Left = -3
    Top = 182
    Width = 308
    Height = 73
    TabOrder = 2
    object Btn_limpar_difal: TButton
      Left = 108
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Limpar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Btn_limpar_difalClick
    end
    object Btn_calc_difal: TButton
      Left = 27
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Calcular'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_calc_difalClick
    end
    object btn_editar: TButton
      Left = 189
      Top = 25
      Width = 103
      Height = 25
      Caption = 'Editar Al'#237'quota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btn_editarClick
    end
  end
  object Panel4: TPanel
    Left = -3
    Top = 248
    Width = 308
    Height = 89
    TabOrder = 3
    object StaticText6: TStaticText
      Left = 71
      Top = 14
      Width = 72
      Height = 23
      Caption = '% Difal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StaticText7: TStaticText
      Left = 24
      Top = 43
      Width = 137
      Height = 23
      Caption = 'Valor do DIFAL: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object EDT_ALIQ_DIFAL_FINAL: TEdit
      Tag = 5
      Left = 141
      Top = 13
      Width = 55
      Height = 24
      Hint = 'Categoria'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
    object Edt_total_difal: TEdit
      Tag = 5
      Left = 160
      Top = 43
      Width = 105
      Height = 24
      Hint = 'Categoria'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = '0'
    end
  end
end
