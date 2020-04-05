unit UfrmFormularioHerdado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadraoHerancaFormulario, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmFormularioHerdado = class(TfrmFormularioHerancaPrincipal)
    lbl: TLabel;
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormularioHerdado: TfrmFormularioHerdado;

implementation

{$R *.dfm}

procedure TfrmFormularioHerdado.btnAlterarClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Botão alterar ativado');
end;

procedure TfrmFormularioHerdado.btnCancelarClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Botão cancelar ativado');
end;

procedure TfrmFormularioHerdado.btnExcluirClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Botão excluir ativado');
end;

procedure TfrmFormularioHerdado.btnFecharClick(Sender: TObject);
begin
  ShowMessage('Botão fechar ativado');
  inherited;  
end;

procedure TfrmFormularioHerdado.btnInserirClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Botão inserir ativado');
end;

procedure TfrmFormularioHerdado.btnSalvarClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Botão salvar ativado');
end;

end.
