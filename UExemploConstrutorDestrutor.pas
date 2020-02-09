unit UExemploConstrutorDestrutor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmConstrutoresDestrutores = class(TForm)
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
   constructor Create(AOwner: TComponent); override;
   destructor Destroy; override;
   
  end;

var
  frmConstrutoresDestrutores: TfrmConstrutoresDestrutores;

implementation
uses
  UCodigoFonte;

{$R *.dfm}

{ TfrmConstrutoresDestrutores }


procedure TfrmConstrutoresDestrutores.BitBtn1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(8,'frmConstrutoresDestrutores := TFrmConstrutoresDestrutores.Create(nil);');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

constructor TfrmConstrutoresDestrutores.Create(AOwner: TComponent);
begin
  inherited;
  ShowMessage('Executando o construtor da classe ao criar o objeto da classe');
end;

destructor TfrmConstrutoresDestrutores.Destroy;
begin  
  ShowMessage('Executando o destrutor da classe ao excluir o objeto criado');
  inherited;
end;

end.
