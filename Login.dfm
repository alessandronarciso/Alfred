object fLogin: TfLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 238
  ClientWidth = 624
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object edLogin: TMaskEdit
    Left = 251
    Top = 45
    Width = 121
    Height = 23
    TabOrder = 0
    Text = ''
    TextHint = 'Informe o usu'#225'rio'
  end
  object edSenha: TMaskEdit
    Left = 251
    Top = 85
    Width = 121
    Height = 23
    TabOrder = 1
    Text = ''
    TextHint = '******'
  end
  object btnLogar: TcxButton
    Left = 212
    Top = 134
    Width = 185
    Height = 25
    Caption = 'ENTRAR'
    TabOrder = 2
    OnClick = btnLogarClick
  end
  object pnInfo: TPanel
    Left = 0
    Top = 200
    Width = 624
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
  end
end
