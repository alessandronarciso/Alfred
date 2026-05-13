unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.TitleBarCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.BaseImageCollection, Vcl.ImageCollection, System.ImageList, Vcl.ImgList,
  Vcl.VirtualImageList, Vcl.StdActns, Vcl.ExtActns, Vcl.ActnList,
  System.Actions, Vcl.PlatformDefaultStyleActnCtrls;

type
  TfPrincipal = class(TForm)
    edDescricao: TEdit;
    dtpData: TDateTimePicker;
    btnLancar: TButton;
    mTarefas: TMemo;
    procedure btnLancarClick(Sender: TObject);
  private

  public

  end;

var
  fPrincipal: TfPrincipal;

implementation

uses
  Tarefa, Funcoes, Login;

{$R *.dfm}


procedure TfPrincipal.btnLancarClick(Sender: TObject);
var
  MsgErro: String;
begin
  var
  Tarefa := TTarefa.Create(edDescricao.Text, dtpData.Date);
  try
    if Tarefa.Validar(MsgErro) then
    begin

      var
      Mensagem := Format('Tarefa : [%s] Adicionada com sucesso.', [Tarefa.Descricao]);

      mTarefas.Lines.Add(Mensagem);
      ExibirMensagem('Sucesso', Mensagem, 0);
      edDescricao.Clear;
    end
    else
      mTarefas.Lines.Add(MsgErro);

  finally
    Tarefa.Free;
  end;

end;

end.
