object Icms_do_st: TIcms_do_st
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Icms'
  ClientHeight = 196
  ClientWidth = 448
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 449
    Height = 72
    TabOrder = 0
    object Label1: TLabel
      Left = 114
      Top = 6
      Width = 67
      Height = 16
      Caption = 'Base ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 264
      Top = 5
      Width = 90
      Height = 16
      Caption = 'Al'#237'quota ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_base: TEdit
      Left = 88
      Top = 28
      Width = 121
      Height = 22
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnExit = edt_baseExit
      OnKeyPress = edt_baseKeyPress
    end
    object Edt_aliq: TEdit
      Left = 288
      Top = 27
      Width = 41
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0'
      OnExit = Edt_aliqExit
      OnKeyPress = Edt_aliqKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 72
    Width = 449
    Height = 129
    TabOrder = 1
    object Label3: TLabel
      Left = 72
      Top = 80
      Width = 101
      Height = 19
      Caption = 'Total ICMS: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edt_total: TEdit
      Left = 171
      Top = 75
      Width = 121
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0'
    end
    object Btn_calc: TButton
      Left = 144
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Calcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_calcClick
    end
    object Btn_clear: TButton
      Left = 225
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Btn_clearClick
    end
  end
end
