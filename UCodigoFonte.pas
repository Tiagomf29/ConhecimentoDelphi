unit UCodigoFonte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, UDM,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls;

type
  TfrmCodigoFonte = class(TForm)
    richedit: TDBRichEdit;
  private
    { Private declarations }
  public
    procedure carregaCodigoFormulario(AId : Smallint; APalavraDestaque : String);
  end;

var
  frmCodigoFonte: TfrmCodigoFonte;

implementation
uses
  UFonte;

{$R *.dfm}

procedure TfrmCodigoFonte.carregaCodigoFormulario(AId : Smallint; APalavraDestaque : String);
var
  qryTemp   : TZQuery;
  dtsTemp   : TDataSource;  
  fonteTemp : TFonte;
  iPosIni   : integer;
begin
    
  fonteTemp  := TFonte.Create;
  qryTemp    := fonteTemp.setObject(AId);
  qryTemp.Connection := DM.conexao;
  dtsTemp    := TDataSource.Create(nil);
  
  dtsTemp.DataSet     := qryTemp;
  richedit.DataSource := dtsTemp;

  //Carrega o RichEdit com as propriedades iniciais
  RichEdit.SelStart  := 0;
  RichEdit.SelLength := length(RichEdit.Text);
  RichEdit.SelAttributes.color := clBlack;
  RichEdit.SelAttributes.style := [];
  RichEdit.SelAttributes.Size  := 10;
 
  //Encontra e atribui a posição inicial do texto no RichEdit
  iPosIni := RichEdit.FindText(APalavraDestaque, 0, length(RichEdit.Text), []);
 
  //Verifica se o texto foi encontrado
  if iPosIni >= 0 then
  begin
      RichEdit.SelStart  := iPosIni;
      RichEdit.SelLength := length(APalavraDestaque);
      RichEdit.SelAttributes.color := clRed;
      RichEdit.SelAttributes.style := [fsBold];
      RichEdit.SelAttributes.Size  := RichEdit.SelAttributes.Size;
  end;

  
end;

end.
