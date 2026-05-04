unit Tarefa;

interface

uses
  System.SysUtils;

type
  TTarefa = class(TObject)
  private
    FDescricao: string;
    FConcluida: Boolean;
    FDataLimite: TDateTime;

    procedure SetDescricao(const Value: string);
  public

    property Descricao: string read FDescricao write SetDescricao;
    property Concluida: Boolean read FConcluida write FConcluida;
    property DataLimite: TDateTime read FDataLimite write FDataLimite;

    function Validar(out Mensagem: string): Boolean;
    function EstaAtrasada: Boolean;
    procedure Concluir;

    constructor Create(ADescricao: string; AData: TDateTime);
  end;

implementation

uses
  Funcoes;

{ TTarefa }

constructor TTarefa.Create(ADescricao: string; AData: TDateTime);
begin
  Self.Descricao := ADescricao;
  FDataLimite := AData;
  FConcluida := False;
end;

procedure TTarefa.SetDescricao(const Value: string);
begin
  FDescricao := Value.Trim;
end;

function TTarefa.Validar(out Mensagem: string): Boolean;
begin
  Result := True;
  Mensagem := '';

  if FDescricao = '' then
  begin
    Result := False;
    Mensagem := 'Erro: A descrição não pode estar vazia!';
    ExibirMensagem('Erro ao Gravar', Mensagem, 1);
    Exit;
  end;

  if Length(FDescricao) < 3 then
  begin
    Result := False;
    Mensagem := 'Erro: Descrição "' + FDescricao + '" está incompleta. Use pelo menos 3 letras!';
    Exit;
  end;

end;

function TTarefa.EstaAtrasada: Boolean;
begin
  Result := (not FConcluida) and (Date > FDataLimite);
end;

procedure TTarefa.Concluir;
begin
  FConcluida := True;
end;

end.
