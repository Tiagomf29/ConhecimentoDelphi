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
  UExemploCopiaObjeto in 'UExemploCopiaObjeto.pas' {frmCopiaObjetos};

{$R *.res}

begin
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmExemploListas, frmExemploListas);
  Application.CreateForm(TFrmExemploArrays, FrmExemploArrays);
  Application.CreateForm(TfrmCopiaObjetos, frmCopiaObjetos);
  Application.Initialize;
  Application.MainFormOnTaskbar := True;  
  Application.CreateForm(TfrmPrincipal, frmPrincipal);  
  Application.Run;
end.
