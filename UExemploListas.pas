unit UExemploListas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.Generics.Collections,
  Vcl.Buttons;

type
  TfrmExemploListas = class(TForm)
    btnCriaLista: TButton;
    mmo1: TMemo;
    btnCriarlista2: TButton;
    mmo2: TMemo;
    btnFonte1: TBitBtn;
    btnFonte2: TBitBtn;
    mmo3: TMemo;
    procedure btnCriaListaClick(Sender: TObject);
    procedure btnCriarlista2Click(Sender: TObject);
    procedure btnFonte1Click(Sender: TObject);
    procedure btnFonte2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemploListas: TfrmExemploListas;

implementation
uses 
 UCor, UCodigoFonte;

{$R *.dfm}

procedure TfrmExemploListas.btnCriaListaClick(Sender: TObject);
var
  listaTemp : TObjectList<TCor>;
  i         : SmallInt;
  cor       : TCor;
begin            

  mmo1.Clear;

  cor := TCor.Create;

  listaTemp := cor.getList;
  
  try
    for i := 0 to listaTemp.Count-1 do
      mmo1.Lines.Add(IntToStr(listaTemp.Items[i].id) +'-'+listaTemp.Items[i].nome);
  finally
    FreeAndNil(cor);
  end;

end;

procedure TfrmExemploListas.btnCriarlista2Click(Sender: TObject);
var
  cor : TCor;
  lista : TList<string>;
  i: Integer;
begin
                         
  mmo2.Clear;

  cor := TCor.Create;

  lista := TList<string>.Create;

  try
    for i := 0 to cor.getList.Count -1 do
     lista.Add(cor.getList.Items[i].nome);

    for i := 0 to lista.Count -1 do
      mmo2.Lines.Add(lista.Items[i]);
  finally
    FreeAndNil(lista);
    FreeAndNil(cor);
  end;

end;

procedure TfrmExemploListas.btnFonte1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(13,'lista.Add(cor);');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmExemploListas.btnFonte2Click(Sender: TObject);
begin
 try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(14,'lista.Add(cor.getList.Items[i].nome);');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

end.
