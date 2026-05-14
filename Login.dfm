object fLogin: TfLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 619
  ClientWidth = 954
  Color = 5921394
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  DesignSize = (
    954
    619)
  TextHeight = 15
  object pnInfo: TPanel
    Left = 0
    Top = 581
    Width = 954
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
    TabOrder = 0
    Visible = False
  end
  object Panel1: TPanel
    Left = 340
    Top = 187
    Width = 273
    Height = 244
    Anchors = []
    BevelOuter = bvNone
    Color = 4671321
    ParentBackground = False
    TabOrder = 1
    object SkLabel1: TSkLabel
      Left = 96
      Top = 40
      Width = 86
      Height = 19
      TextSettings.FontColor = claWhite
      Words = <
        item
          Caption = 'Identifique-se'
        end>
    end
    object edLogin: TMaskEdit
      Left = 58
      Top = 102
      Width = 158
      Height = 23
      BevelInner = bvNone
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = ''
      TextHint = 'Informe o usu'#225'rio'
    end
    object edSenha: TMaskEdit
      Left = 58
      Top = 136
      Width = 158
      Height = 23
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = ''
      TextHint = '******'
    end
    object btnEntrar: TcxButton
      Left = 40
      Top = 176
      Width = 193
      Height = 25
      Caption = 'ENTRAR'
      Colors.Default = 5921394
      Colors.DefaultText = clWhite
      Colors.Hot = 5263459
      Colors.HotText = clWhite
      Colors.Pressed = 6513532
      Colors.PressedText = clWhite
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnEntrarClick
    end
  end
end
