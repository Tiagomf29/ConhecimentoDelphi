unit UExemploHerancaPolimorfismo;

interface

uses
  Vcl.Dialogs;

type

  THerancaPolimorfismo = class
    
  private
  
  public
    procedure mensagemPolimorfismo(); virtual;
    procedure mensagemPolimorfismo2();
  end;

implementation

{ THerancaPolimorfismo }

procedure THerancaPolimorfismo.mensagemPolimorfismo;
begin
  MessageDlg('Mensagem padr�o 2 - Classe pai', mtInformation, [mbOK], 0);
end;

procedure THerancaPolimorfismo.mensagemPolimorfismo2;
begin
  MessageDlg('Mensagem padr�o 1 - Classe pai', mtInformation, [mbOK], 0);
end;

end.
