unit UExemploPolimorfismo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPolimorfismoSobrecargaSobrescrita = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
  
  end;

var
  frmPolimorfismoSobrecargaSobrescrita: TfrmPolimorfismoSobrecargaSobrescrita;

implementation
uses
  UPolimorfismo,UCodigoFonte;

{$R *.dfm}

procedure TfrmPolimorfismoSobrecargaSobrescrita.BitBtn1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(9,'procedure mensagemPolimorfismo2();');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmPolimorfismoSobrecargaSobrescrita.BitBtn2Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(10,'procedure mensagemPolimorfismo(); Override;');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmPolimorfismoSobrecargaSobrescrita.BitBtn3Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(11,'procedure somaValor(); overload;');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmPolimorfismoSobrecargaSobrescrita.BitBtn4Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(12,'procedure somaValor(AValor : Integer); overload;');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmPolimorfismoSobrecargaSobrescrita.Button1Click(Sender: TObject);
var
  polimorfismo : TPolimorfismo;
begin
  try
    polimorfismo := TPolimorfismo.Create;
    polimorfismo.mensagemPolimorfismo2;
  finally
    FreeAndNil(polimorfismo);
  end;
end;

procedure TfrmPolimorfismoSobrecargaSobrescrita.Button2Click(Sender: TObject);
var
  polimorfismo : TPolimorfismo;
begin
  try
    polimorfismo := TPolimorfismo.Create;
    polimorfismo.mensagemPolimorfismo;
  finally
    FreeAndNil(polimorfismo);
  end;
end;

procedure TfrmPolimorfismoSobrecargaSobrescrita.Button3Click(Sender: TObject);
var
  polimorfismo : TPolimorfismo;
begin
  try
    polimorfismo := TPolimorfismo.Create;
    polimorfismo.somaValor;
  finally
    FreeAndNil(polimorfismo);
  end;
end;

procedure TfrmPolimorfismoSobrecargaSobrescrita.Button4Click(Sender: TObject);
var
  polimorfismo : TPolimorfismo;
begin
  try
    polimorfismo := TPolimorfismo.Create;
    polimorfismo.somaValor(20);
  finally
    FreeAndNil(polimorfismo);
  end;
end;

end.
