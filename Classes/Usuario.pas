unit Usuario;

interface

uses
  System.SysUtils;

type
  TTUsuario = class(TObject)

  private
    FLogin: String;
    FSenha: String;

  public
    property Login: string read FLogin write FLogin;
    property Senha: string read FSenha write FSenha;

    constructor Create(Login: String; Senha: String);
    function ProcessarLogin(out Mensagem: String): Boolean;

  end;

implementation

{ TTUsuario }

constructor TTUsuario.Create(Login, Senha: String);
begin

end;

function TTUsuario.ProcessarLogin(out Mensagem: String): Boolean;
begin
  if Login = 'ADM' then
  begin
    Mensagem := 'Efetuado com sucesso';
  end;
end;

end.
