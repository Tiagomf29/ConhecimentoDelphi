unit UPolimorfismo;

interface
uses
  UExemploHerancaPolimorfismo,Vcl.Dialogs, System.SysUtils, 
  System.Variants, System.Classes, Vcl.Graphics;

type

  TPolimorfismo = class(THerancaPolimorfismo)

  private

  public
    procedure mensagemPolimorfismo(); Override;
    procedure somaValor(); overload;
    procedure somaValor(AValor : Integer); overload;

  end;

implementation

{ TPolimorfismo }



{ TPolimorfismo }

procedure TPolimorfismo.mensagemPolimorfismo;
begin
  MessageDlg('Mensagem padrão 1 - Classe Filho (Aplicando o polimorfismo)',mtInformation,[mbOK],0);
end;

procedure TPolimorfismo.somaValor;
var
  resultado : integer;
begin
  
  resultado := 10+20;
  MessageDlg('Utilizando um método com o nome SomaValor()'+#13+'A soma dos valores 10 e 20 é igual a: '+inttostr(resultado),mtInformation,[mbOK],0 )   ;
end;

procedure TPolimorfismo.somaValor(AValor: Integer);
var
  resultado : integer;
begin
  resultado := 10+ AValor;
  MessageDlg('Utilizando um método com o nome SomaValor(AValor)'+#13+'A soma do valor 10 e do valor do parâmetro '+inttostr(AValor)+' é: ' + IntToStr(resultado),mtInformation,[mbOK],0 )   ;
end;

{ TPolimorfismo }



end.
