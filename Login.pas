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
    ValidaLogin: Boolean;
  end;

var
  fLogin: TfLogin;

implementation

uses
  Usuario;

{$R *.dfm}


procedure TfLogin.cxButton1Click(Sender: TObject);
begin

  with TTUsuario.Create do
    try

      Login := UpperCase(edLogin.Text);
      Senha := edSenha.Text;
      var
        Mensagem: String;
      if ProcessarLogin(Mensagem) then
      begin
        ModalResult := mrOk;
      end
      else
      begin
        ShowMessage(Mensagem);
        edSenha.Clear;
      end;

    finally
      Free;
    end;

end;

end.
