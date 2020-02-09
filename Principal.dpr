program Principal;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UCodigoFonte in 'UCodigoFonte.pas' {frmCodigoFonte},
  UExemploCombobox in 'UExemploCombobox.pas' {frmExemploCombobox},
  UCor in 'UCor.pas',
  UFonte in 'UFonte.pas',
  UExemploRadioGroup in 'UExemploRadioGroup.pas' {frmExemploRadioGroup},
  UExemploClientDataSetFiltro in 'UExemploClientDataSetFiltro.pas' {frmExemploClientDataSetFiltro},
  UExemploConstrutorDestrutor in 'UExemploConstrutorDestrutor.pas' {frmConstrutoresDestrutores},
  UExemploPolimorfismo in 'UExemploPolimorfismo.pas' {frmPolimorfismoSobrecargaSobrescrita},
  UExemploHerancaPolimorfismo in 'UExemploHerancaPolimorfismo.pas',
  UPolimorfismo in 'UPolimorfismo.pas';

{$R *.res}

begin
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Initialize;
  Application.MainFormOnTaskbar := True;  
  Application.CreateForm(TfrmPrincipal, frmPrincipal);  
  Application.Run;
end.
