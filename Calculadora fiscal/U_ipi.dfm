object frm_IPI: Tfrm_IPI
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'frm_IPI'
  ClientHeight = 191
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 134
    Width = 28
    Height = 19
    Caption = 'R$:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt_base_ipi: TEdit
    Left = 72
    Top = 48
    Width = 104
    Height = 22
    Hint = 'Categoria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TextHint = 'Base IPI'
    OnExit = edt_base_ipiExit
    OnKeyPress = edt_base_ipiKeyPress
  end
  object edt_aliq_ipi: TEdit
    Tag = 5
    Left = 224
    Top = 48
    Width = 58
    Height = 22
    Hint = 'Categoria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    TextHint = '% IPI'
    OnChange = edt_aliq_ipiChange
    OnExit = edt_aliq_ipiExit
    OnKeyPress = edt_aliq_ipiKeyPress
  end
  object StaticText1: TStaticText
    Left = 72
    Top = 22
    Width = 104
    Height = 20
    Caption = 'Base de C'#225'lculo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object StaticText2: TStaticText
    Left = 224
    Top = 22
    Width = 58
    Height = 20
    Caption = 'Al'#237'quota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Btn_calc_ipi: TButton
    Left = 104
    Top = 88
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
    TabOrder = 4
    OnClick = Btn_calc_ipiClick
  end
  object Btn_clear_ipi: TButton
    Left = 185
    Top = 88
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
    TabOrder = 5
    OnClick = Btn_clear_ipiClick
  end
  object edt_total_ipi: TEdit
    Left = 131
    Top = 127
    Width = 119
    Height = 31
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
end
