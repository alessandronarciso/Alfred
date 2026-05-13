program Tarefas;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {fPrincipal},
  Tarefa in 'Classes\Tarefa.pas',
  Vcl.Themes,
  Vcl.Styles,
  Funcoes in 'Funcoes.pas',
  Mensagem in 'Mensagem.pas' {fMensagem},
  Usuario in 'Classes\Usuario.pas',
  Login in 'Login.pas' {fLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfLogin, fLogin);
  Application.Run;
end.
