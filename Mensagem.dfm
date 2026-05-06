object fMensagem: TfMensagem
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Notifica'#231#227'o'
  ClientHeight = 180
  ClientWidth = 369
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnShow = FormShow
  TextHeight = 15
  object imageicone: TSVGIconImage
    Left = 152
    Top = 48
    Width = 65
    Height = 64
    AutoSize = False
    ImageList = svglista
    ImageIndex = 0
    ImageName = 'ok-svgrepo-com'
  end
  object lblMensagem: TLabel
    Left = 12
    Top = 118
    Width = 345
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Salvo com sucesso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblTitulo: TLabel
    Left = 12
    Top = 8
    Width = 345
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Sucesso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxButton1: TcxButton
    Left = 147
    Top = 146
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object svglista: TSVGIconImageList
    SVGIconItems = <
      item
        IconName = 'ok-svgrepo-com'
        SVGText = 
          '<?xml version="1.0" encoding="utf-8"?>'#13#10'<!-- Uploaded to: SVG Re' +
          'po, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->'#13#10'<svg w' +
          'idth="800px" height="800px" viewBox="0 0 1024 1024" class="icon"' +
          '  version="1.1" xmlns="http://www.w3.org/2000/svg"><path d="M512' +
          ' 512m-448 0a448 448 0 1 0 896 0 448 448 0 1 0-896 0Z" fill="#4CA' +
          'F50" /><path d="M738.133333 311.466667L448 601.6l-119.466667-119' +
          '.466667-59.733333 59.733334 179.2 179.2 349.866667-349.866667z" ' +
          'fill="#CCFF90" /></svg>'
      end
      item
        IconName = 'close-circle-svgrepo-com'
        SVGText = 
          '<?xml version="1.0" encoding="utf-8"?><!-- Uploaded to: SVG Repo' +
          ', www.svgrepo.com, Generator: SVG Repo Mixer Tools -->'#13#10'<svg wid' +
          'th="800px" height="800px" viewBox="0 0 24 24" fill="none" xmlns=' +
          '"http://www.w3.org/2000/svg">'#13#10'<path d="M12 2C6.49 2 2 6.49 2 12' +
          'C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 1' +
          '2 2ZM15.36 14.3C15.65 14.59 15.65 15.07 15.36 15.36C15.21 15.51 ' +
          '15.02 15.58 14.83 15.58C14.64 15.58 14.45 15.51 14.3 15.36L12 13' +
          '.06L9.7 15.36C9.55 15.51 9.36 15.58 9.17 15.58C8.98 15.58 8.79 1' +
          '5.51 8.64 15.36C8.35 15.07 8.35 14.59 8.64 14.3L10.94 12L8.64 9.' +
          '7C8.35 9.41 8.35 8.93 8.64 8.64C8.93 8.35 9.41 8.35 9.7 8.64L12 ' +
          '10.94L14.3 8.64C14.59 8.35 15.07 8.35 15.36 8.64C15.65 8.93 15.6' +
          '5 9.41 15.36 9.7L13.06 12L15.36 14.3Z" fill="#292D32"/>'#13#10'</svg>'
        FixedColor = clCrimson
      end>
    Scaled = True
    Left = 32
    Top = 16
  end
end
