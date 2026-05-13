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

    constructor Create();
    function ProcessarLogin(out Mensagem: String): Boolean;

  end;

implementation

{ TTUsuario }

constructor TTUsuario.Create();
begin

end;

function TTUsuario.ProcessarLogin(out Mensagem: String): Boolean;
begin
  Result := False;

  if Login = 'ADM' then
  begin
    Result := True;
    Mensagem := 'Efetuado com sucesso';
  end
  else
    Mensagem := 'Você não têm permissão';
end;

end.
