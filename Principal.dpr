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
  UPolimorfismo in 'UPolimorfismo.pas',
  UExemploListas in 'UExemploListas.pas' {frmExemploListas},
  UExemploArrays in 'UExemploArrays.pas' {FrmExemploArrays},
  UExemploCopiaObjeto in 'UExemploCopiaObjeto.pas' {frmCopiaObjetos},
  URelatorios in 'URelatorios.pas' {frmRelatorios},
  URelatorioQrp in 'URelatorioQrp.pas' {frmRelQrp},
  UHerancaClasses in 'UHerancaClasses.pas' {frmHerancaClasse},
  UClassesDeAnimais in 'UClassesDeAnimais.pas',
  UPadraoHerancaFormulario in 'UPadraoHerancaFormulario.pas' {frmFormularioHerancaPrincipal},
  UfrmFormularioHerdado in 'UfrmFormularioHerdado.pas' {frmFormularioHerdado},
  UExemploHerancaFormularios in 'UExemploHerancaFormularios.pas' {frmPrincipalHeracaoFormularios},
  UExemploCheckListBox in 'UExemploCheckListBox.pas' {frmExemploCheckListBox};

{$R *.res}

begin
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Initialize;
  Application.MainFormOnTaskbar := True;  
  Application.CreateForm(TfrmPrincipal, frmPrincipal);  
  Application.Run;
end.
