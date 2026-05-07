unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons;

type
  TfLogin = class(TForm)
    edLogin: TMaskEdit;
    edSenha: TMaskEdit;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogin: TfLogin;

implementation

uses
  Usuario;

{$R *.dfm}


procedure TfLogin.cxButton1Click(Sender: TObject);
begin
  var
  Login := TTUsuario.Create('', '');

  var
    Mensagem: String;

  with Login do
  begin

    Login := edLogin.Text;
    Senha := '';
    ProcessarLogin(Mensagem);

    if Mensagem.IsEmpty then
      exit;

    ShowMessage(Mensagem);
    Close;
  end;

end;

end.
