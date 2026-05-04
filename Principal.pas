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
    FDescricao: string;
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
  Tarefa: TTarefa;
  MsgErro: String;
begin
  Tarefa := TTarefa.Create(edDescricao.Text, dtpData.Date);
  try
    if Tarefa.Validar(MsgErro) then
    begin
      mTarefas.Lines.Add('Tarefa : ' + Tarefa.Descricao + ' Adicionada com sucesso');
    end
    else
    begin
      mTarefas.Lines.Add(MsgErro);
    end;

  finally
    Tarefa.Free;
  end;
end;

end.
