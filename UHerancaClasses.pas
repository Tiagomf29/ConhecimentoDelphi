unit UHerancaClasses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmHerancaClasse = class(TForm)
    btnClasseAnimal: TBitBtn;
    btnClasseCachorro: TBitBtn;
    btnClassePato: TBitBtn;
    btnClasseGato: TBitBtn;
    btnFonte1: TBitBtn;
    procedure btnClasseAnimalClick(Sender: TObject);
    procedure btnClasseCachorroClick(Sender: TObject);
    procedure btnClassePatoClick(Sender: TObject);
    procedure btnClasseGatoClick(Sender: TObject);
    procedure btnFonte1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHerancaClasse: TfrmHerancaClasse;

implementation
uses
 UClassesDeAnimais, UCodigoFonte;

{$R *.dfm}

procedure TfrmHerancaClasse.btnClasseAnimalClick(Sender: TObject);
var
  animal : TClasseAnimal;
begin

  animal := TClasseAnimal.Create;
  try
    animal.codigo := 1;
    animal.nome   := 'Animal classe principal' ;
    animal.idade  := 10;
    animal.cor    := 'Preto';
    animal.peso   := 100.5;
    animal.altura := 2.5;

    ShowMessage('Código: '+ IntToStr(animal.codigo)+#13+
                'Nome  : '+animal.nome +#13+
                'Idade : '+IntToStr(animal.idade)+#13+
                'Cor   : '+ animal.cor +#13+
                'peso  : '+FloatToStr(animal.peso)+#13+
                'Altura: '+FloatToStr(animal.altura) );
  finally
    FreeAndNil(animal);
  end;
  
end;

procedure TfrmHerancaClasse.btnClasseCachorroClick(Sender: TObject);
var
  animal : TClasseCachorro;
begin

  animal := TClasseCachorro.Create;
  try
    animal.codigo := 2;
    animal.nome   := 'Cachorro' ;
    animal.idade  := 11;
    animal.cor    := 'Branco';
    animal.peso   := 60.5;
    animal.altura := 1.5;
    animal.raca   := 'Pastor alemão';

    ShowMessage('Código: '+ IntToStr(animal.codigo)+#13+
                'Nome  : '+animal.nome +#13+
                'Idade : '+IntToStr(animal.idade)+#13+
                'Cor   : '+ animal.cor +#13+
                'peso  : '+FloatToStr(animal.peso)+#13+
                'Altura: '+FloatToStr(animal.altura)+#13+#13+
                'Raça  : '+animal.raca );
  finally
    FreeAndNil(animal);
  end;
end;

procedure TfrmHerancaClasse.btnClasseGatoClick(Sender: TObject);
var
  animal : TClasseGato;
begin

  animal := TClasseGato.Create;
  try
    animal.codigo := 4;
    animal.nome   := 'Gato' ;
    animal.idade  := 5;
    animal.cor    := 'Vermelho';
    animal.peso   := 1.5;
    animal.altura := 0.7;
    animal.raca   := 'Persa';

    ShowMessage('Código: '+ IntToStr(animal.codigo)+#13+
                'Nome  : '+animal.nome +#13+
                'Idade : '+IntToStr(animal.idade)+#13+
                'Cor   : '+ animal.cor +#13+
                'peso  : '+FloatToStr(animal.peso)+#13+
                'Altura: '+FloatToStr(animal.altura)+#13+#13+
                'Raça  : '+animal.raca );
  finally
    FreeAndNil(animal);
  end;
end;

procedure TfrmHerancaClasse.btnClassePatoClick(Sender: TObject);
var
  ave : TClassePato;
begin

  ave := TClassePato.Create;
  try
    ave.codigo := 3;
    ave.nome   := 'Pato' ;
    ave.idade  := 8;
    ave.cor    := 'Azul';
    ave.peso   := 10.5;
    ave.altura := 0.5;
    ave.especie:= 'Pato real';

    ShowMessage('Código : '+ IntToStr(ave.codigo)+#13+
                'Nome   : '+ave.nome +#13+
                'Idade  : '+IntToStr(ave.idade)+#13+
                'Cor    : '+ ave.cor +#13+
                'peso   : '+FloatToStr(ave.peso)+#13+
                'Altura : '+FloatToStr(ave.altura)+#13+#13+
                'Espécie:'+ ave.especie );
  finally
    FreeAndNil(ave);
  end;
end;

procedure TfrmHerancaClasse.btnFonte1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(22,'TClassePato = class(TClasseAnimal)');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

end.
