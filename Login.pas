unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.ExtCtrls,
  System.Skia, Vcl.Skia;

type
  TfLogin = class(TForm)
    pnInfo: TPanel;
    Panel1: TPanel;
    edLogin: TMaskEdit;
    edSenha: TMaskEdit;
    btnEntrar: TcxButton;
    SkLabel1: TSkLabel;
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure ProcessaInfo(Mensagem: String; Cor: TColor);

  public
    { Public declarations }

  end;

var
  fLogin: TfLogin;

implementation

uses
  Usuario, Principal;

{$R *.dfm}


procedure TfLogin.btnEntrarClick(Sender: TObject);
var
  Mensagem: String;
  fPrincipal: TfPrincipal;
begin

  with TTUsuario.Create do
    try
      Login := UpperCase(edLogin.Text);
      Senha := edSenha.Text;

      if ProcessarLogin(Mensagem) then
      begin

        ProcessaInfo(Mensagem, clGreen);

        fPrincipal := TfPrincipal.Create(nil);
        try
          Self.Hide;
          fPrincipal.ShowModal;
        finally
          fPrincipal.Free;
          Self.Close;
        end;

      end
      else
        ProcessaInfo(Mensagem, $006666FF);

    finally
      Free;
    end;

end;

procedure TfLogin.ProcessaInfo(Mensagem: String; Cor: TColor);
begin
  with pnInfo do
  begin
    Caption := Mensagem;
    Color := Cor;
    Update;
    Visible := True;
  end;

end;

end.
