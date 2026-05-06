unit Mensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SVGIconImage, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, System.ImageList,
  Vcl.ImgList, SVGIconImageListBase, SVGIconImageList;

type
  TfMensagem = class(TForm)
    imageicone: TSVGIconImage;
    lblMensagem: TLabel;
    svglista: TSVGIconImageList;
    cxButton1: TcxButton;
    lblTitulo: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    CodigoIcone: Integer;
  end;

var
  fMensagem: TfMensagem;

implementation

{$R *.dfm}


procedure TfMensagem.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfMensagem.FormShow(Sender: TObject);
begin
  if CodigoIcone = 0 then
    imageicone.ImageIndex := 0
  else
    imageicone.ImageIndex := 1;
end;

end.
