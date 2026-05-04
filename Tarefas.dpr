program Tarefas;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {fPrincipal},
  Tarefa in 'Classes\Tarefa.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
