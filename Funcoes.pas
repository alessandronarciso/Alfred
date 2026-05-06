unit Funcoes;

interface

uses System.Notification, Winapi.Messages;

type
  TTFuncoes = class(tObject)
  private

  public
    NotificationCenter1: TNotificationCenter;
    class procedure ExibirNotificacoes(Mensagem: String);

  end;

procedure ExibirMensagem(const Titulo, Mensagem: String; const Icone: Integer);

implementation

uses
  Mensagem;

procedure ExibirMensagem(const Titulo, Mensagem: String; const Icone: Integer);
begin
  with tfMensagem.Create(nil) do
  begin
    try
      CodigoIcone := Icone;
      lblTitulo.Caption := Titulo;
      lblMensagem.Caption := Mensagem;

      ShowModal;
    finally
      Free;
    end;
  end;

end;

class procedure TTFuncoes.ExibirNotificacoes(Mensagem: String);
var
  MyNotification: TNotification;
  NotificationCenter: TNotificationCenter;
begin
  NotificationCenter := TNotificationCenter.Create(nil);
  try
    MyNotification := NotificationCenter.CreateNotification;
    try
      MyNotification.Name := 'NotificacaoID';
      MyNotification.Title := 'Adicionado';
      MyNotification.AlertBody := Mensagem;

      NotificationCenter.PresentNotification(MyNotification);
    finally
      MyNotification.Free;
    end;
  finally
    NotificationCenter.Free;
  end;
end;

end.
