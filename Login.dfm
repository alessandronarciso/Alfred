object fLogin: TfLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 238
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object edLogin: TMaskEdit
    Left = 251
    Top = 69
    Width = 121
    Height = 23
    TabOrder = 0
    Text = ''
    TextHint = 'Informe o usu'#225'rio'
  end
  object edSenha: TMaskEdit
    Left = 251
    Top = 109
    Width = 121
    Height = 23
    TabOrder = 1
    Text = ''
    TextHint = '******'
  end
  object cxButton1: TcxButton
    Left = 212
    Top = 152
    Width = 185
    Height = 25
    Caption = 'ENTRAR'
    TabOrder = 2
    OnClick = cxButton1Click
  end
end
