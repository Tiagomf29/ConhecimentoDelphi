unit UExemploCopiaObjeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmCopiaObjetos = class(TForm)
    btnCopiaObjeto: TButton;
    mmo1: TMemo;
    btnFonte1: TBitBtn;
    procedure btnCopiaObjetoClick(Sender: TObject);
    procedure btnFonte1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCopiaObjetos: TfrmCopiaObjetos;

implementation
uses
  UCor,UCodigoFonte;

{$R *.dfm}

procedure TfrmCopiaObjetos.btnCopiaObjetoClick(Sender: TObject);
var
  cor1 : TCor;
  cor2 : TCor;
begin

  cor1 := TCor.Create;
  cor2 := TCor.Create;
  try
    try
  
      cor1.id := 10;
      cor1.nome := 'TesteCor1';

      cor2.id := 20;
      cor2.nome := 'TesteCor2';

      cor2.copyFromObject(cor1);
  
    finally
      FreeAndNil(cor1);
    end;

    mmo1.Lines.Add(cor2.nome); 
    
  finally
    FreeAndNil(cor2);
  end;

end;

procedure TfrmCopiaObjetos.btnFonte1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(17,'cor2.copyFromObject(cor1);');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

end.
