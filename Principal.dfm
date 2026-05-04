object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Tarefas | v1'
  ClientHeight = 198
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object edDescricao: TEdit
    Left = 8
    Top = 8
    Width = 226
    Height = 23
    TabOrder = 0
    TextHint = 'Descri'#231#227'o'
  end
  object dtpData: TDateTimePicker
    Left = 240
    Top = 8
    Width = 122
    Height = 23
    Date = 46146.000000000000000000
    Time = 0.466464953700779000
    TabOrder = 1
  end
  object btnLancar: TButton
    Left = 368
    Top = 7
    Width = 121
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btnLancarClick
  end
  object mTarefas: TMemo
    Left = 0
    Top = 38
    Width = 499
    Height = 160
    Align = alBottom
    TabOrder = 3
  end
end
