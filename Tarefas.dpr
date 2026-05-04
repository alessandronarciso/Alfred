program Tarefas;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {fPrincipal},
  Tarefa in 'Classes\Tarefa.pas',
  Vcl.Themes,
  Vcl.Styles,
  Funcoes in 'Funcoes.pas',
  Mensagem in 'Mensagem.pas' {fMensagem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows Designer');
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
