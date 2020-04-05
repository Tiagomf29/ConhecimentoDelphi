unit UExemploHerancaFormularios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPrincipalHeracaoFormularios = class(TForm)
    btnFormularioHeracaoPrincipal: TBitBtn;
    btnFormularioHerançaFormulario: TBitBtn;
    btnFonte1: TBitBtn;
    btn1: TBitBtn;
    procedure btnFormularioHeracaoPrincipalClick(Sender: TObject);
    procedure btnFormularioHerançaFormularioClick(Sender: TObject);
    procedure btnFonte1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipalHeracaoFormularios: TfrmPrincipalHeracaoFormularios;

implementation
uses
 UfrmFormularioHerdado, UPadraoHerancaFormulario, UCodigoFonte;

{$R *.dfm}

procedure TfrmPrincipalHeracaoFormularios.btn1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(24,'TfrmFormularioHerdado = class(TfrmFormularioHerancaPrincipal)');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmPrincipalHeracaoFormularios.btnFonte1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(23,'frmFormularioHerancaPrincipal.ShowModal;');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmPrincipalHeracaoFormularios.btnFormularioHeracaoPrincipalClick(
  Sender: TObject);
begin
  try
    frmFormularioHerancaPrincipal := TfrmFormularioHerancaPrincipal.Create(nil);
    frmFormularioHerancaPrincipal.ShowModal;
  finally
    FreeAndNil(frmFormularioHerancaPrincipal);
  end;
end;

procedure TfrmPrincipalHeracaoFormularios.btnFormularioHerançaFormularioClick(
  Sender: TObject);
begin
  try
    frmFormularioHerdado := TfrmFormularioHerdado.Create(nil);
    frmFormularioHerdado.ShowModal;
  finally
    FreeAndNil(frmFormularioHerdado);
  end;
end;

end.
