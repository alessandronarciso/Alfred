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
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

uses
  Tarefa;

{$R *.dfm}


procedure TfPrincipal.btnLancarClick(Sender: TObject);
var
  MinhaTarefa: TTarefa; // Declaramos a variável do tipo da classe
begin

  if edDescricao.Text = '' then
  begin
    mTarefas.Lines.Add('Informe a descrição para prosseguir.');
    edDescricao.SetFocus;
    exit;
  end;

  if dtpData.Date < Date then
  begin
    mTarefas.Lines.Add('A Data não pode ser retroativa');
    exit;
  end;

  // 1. Instanciamos o objeto (Criamos na memória)
  MinhaTarefa := TTarefa.Create(edDescricao.Text, dtpData.Date);

  try
    // 2. Usamos as propriedades e métodos
    if MinhaTarefa.EstaAtrasada then
      mTarefas.Lines.Add('Atenção: Esta tarefa já está atrasada!')

    else
      mTarefas.Lines.Add('Tarefa: ' + MinhaTarefa.Descricao + ' | Data: ' + FormatDateTime('dd/mm/yyy', MinhaTarefa.DataLimite) + ' criada com sucesso!');

    // 3. Exemplo de ação
    MinhaTarefa.Concluir;

  finally
    // 4. MUITO IMPORTANTE: Em POO, o que você cria, você deve destruir
    // para não causar vazamento de memória (Memory Leak)
    MinhaTarefa.Free;
  end;
end;

end.
