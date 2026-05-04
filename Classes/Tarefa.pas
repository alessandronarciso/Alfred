unit Tarefa;

interface

uses
  System.SysUtils; // Necessário para usar datas e funções de string

type
  TTarefa = class(TObject)
  private
    { Atributos privados - Segurança dos dados (Encapsulamento) }
    FDescricao: string;
    FConcluida: Boolean;
    FDataLimite: TDateTime;
  public
    { Propriedades - O que o mundo externo vê }
    property Descricao: string read FDescricao write FDescricao;
    property Concluida: Boolean read FConcluida write FConcluida;
    property DataLimite: TDateTime read FDataLimite write FDataLimite;

    { Métodos - Ações que a classe realiza }
    function EstaAtrasada: Boolean;
    procedure Concluir;

    { Construtor - Para inicializar a tarefa com valores padrão }
    constructor Create(ADescricao: string; AData: TDateTime);
  end;

implementation

{ TTarefa }

constructor TTarefa.Create(ADescricao: string; AData: TDateTime);
begin
  FDescricao  := ADescricao;
  FDataLimite := AData;
  FConcluida  := False; // Toda tarefa nova começa não concluída
end;

procedure TTarefa.Concluir;
begin
  FConcluida := True;
end;

function TTarefa.EstaAtrasada: Boolean;
begin
  // Retorna True se não estiver concluída E a data atual for maior que a limite
  Result := (not FConcluida) and (Date > FDataLimite);
end;

end.
