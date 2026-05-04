object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  Caption = 'Gerenciador de Tarefas | v1'
  ClientHeight = 213
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object edDescricao: TEdit
    Left = 0
    Top = 13
    Width = 226
    Height = 23
    TabOrder = 0
    TextHint = 'Descri'#231#227'o'
  end
  object dtpData: TDateTimePicker
    Left = 232
    Top = 13
    Width = 122
    Height = 23
    Date = 46146.000000000000000000
    Time = 0.466464953700779000
    TabOrder = 1
  end
  object btnLancar: TButton
    Left = 360
    Top = 12
    Width = 121
    Height = 25
    Caption = 'Salvar Tarefa'
    TabOrder = 2
    OnClick = btnLancarClick
  end
  object mTarefas: TMemo
    Left = 0
    Top = 53
    Width = 481
    Height = 160
    Align = alBottom
    TabOrder = 3
  end
end
