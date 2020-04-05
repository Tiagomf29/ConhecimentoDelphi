unit UPadraoHerancaFormulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmFormularioHerancaPrincipal = class(TForm)
    pnlBotoes: TPanel;
    btnInserir: TBitBtn;
    btnSalvar: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    procedure modoInsercao();
    procedure modoAlteracao();
  public
    { Public declarations }
  end;

var
  frmFormularioHerancaPrincipal: TfrmFormularioHerancaPrincipal;

implementation

{$R *.dfm}

{ TFormularioHerancaPrincipal }

procedure TfrmFormularioHerancaPrincipal.btnAlterarClick(Sender: TObject);
begin
  modoInsercao();
end;

procedure TfrmFormularioHerancaPrincipal.btnCancelarClick(Sender: TObject);
begin
  modoAlteracao;
end;

procedure TfrmFormularioHerancaPrincipal.btnExcluirClick(Sender: TObject);
begin
  modoAlteracao();
end;

procedure TfrmFormularioHerancaPrincipal.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFormularioHerancaPrincipal.btnInserirClick(Sender: TObject);
begin
  modoInsercao();
end;

procedure TfrmFormularioHerancaPrincipal.btnSalvarClick(Sender: TObject);
begin
  modoAlteracao();  
end;

procedure TfrmFormularioHerancaPrincipal.modoAlteracao;
begin
  btnInserir.Enabled  := True;
  btnSalvar.Enabled   := False;
  btnAlterar.Enabled  := True;
  btnCancelar.Enabled := False;
  btnExcluir.Enabled  := True;
  btnFechar.Enabled   := True;
end;

procedure TfrmFormularioHerancaPrincipal.modoInsercao;
begin
  btnInserir.Enabled  := False;
  btnSalvar.Enabled   := True;
  btnAlterar.Enabled  := False;
  btnCancelar.Enabled := True;
  btnExcluir.Enabled  := False;
  btnFechar.Enabled   := False;
end;

end.
