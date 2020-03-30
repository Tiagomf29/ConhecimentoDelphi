unit URelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, RDprint,
  Vcl.ExtCtrls, QuickRpt, Data.DB, frxClass, frxDBSet, Datasnap.DBClient,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RpCon, RpConDS, RpDefine,
  RpRave, RpBase, RpSystem;

type

  TRelatorioRDP = class
    RDP: TRDprint;
  
  private
    procedure configuracoesRelatorio();    
    procedure cabecalhoRelatorio;
    procedure corpoRelatorio();
    procedure relatorioRDP();

    function repeteString(qtde : Integer; caracter : String): string;

  public
    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
  
  end;
 
  TfrmRelatorios = class(TForm)
    btnRDPRINT: TBitBtn;
    btnQuickReport: TBitBtn;
    btnFastReport: TBitBtn;
    Fast: TfrxReport;
    CDS: TClientDataSet;
    CDSNOME: TStringField;
    FastFrxDb: TfrxDBDataset;
    btnRaveReport: TBitBtn;
    Rave: TRvProject;
    ConexaoRave: TRvDataSetConnection;
    btnFonte1: TBitBtn;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    rvsystm1: TRvSystem;
    procedure btnRDPRINTClick(Sender: TObject);
    procedure btnQuickReportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFastReportClick(Sender: TObject);
    procedure btnRaveReportClick(Sender: TObject);
    procedure btnFonte1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure rvsystmAfterPreviewPrint(Sender: TObject);
  private
    
  public
    { Public declarations }
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation
uses
  URelatorioQrp, UDM, UCodigoFonte;

{$R *.dfm}

procedure TfrmRelatorios.btn1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(19,'frmRelQrp.qrpImpressao.Preview;');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmRelatorios.btn2Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(20,'frmRelatorios.Fast.ShowReport();');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmRelatorios.btn3Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(21,'Rave.Execute;');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmRelatorios.btnFastReportClick(Sender: TObject);
begin
  frmRelatorios.Fast.LoadFromFile('C:\Tiago\Desenvolvimento\Projetos Git\ConhecimentoDelphi\Relatorios\ExemploFastReport.fr3'); 
  frmRelatorios.Fast.ShowReport();
end;

procedure TfrmRelatorios.btnFonte1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(18,'relatorio.relatorioRDP();');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmRelatorios.btnQuickReportClick(Sender: TObject);
begin
  frmRelQrp := TfrmRelQrp.Create(nil);
  try
    frmRelQrp.qrpImpressao.Preview;
  finally
    FreeAndNil(frmRelQrp);
  end;
end;

procedure TfrmRelatorios.btnRaveReportClick(Sender: TObject);
begin
  Rave.Execute;
end;

procedure TfrmRelatorios.btnRDPRINTClick(Sender: TObject);
var
  relatorio : TRelatorioRDP;
begin
  relatorio := TRelatorioRDP.Create(nil);
  try
    relatorio.relatorioRDP();
  finally
    FreeAndNil(relatorio);
  end;  
end;

procedure TfrmRelatorios.FormShow(Sender: TObject);
var
  i : Integer;
begin
  for i := 0 to 10000 do
  begin  
    cds.Append;
    CDS.FieldByName('NOME').AsString := 'NOME : '+'XXXXXX '+IntToStr(i);
    CDS.Post;
  end;

  CDS.First;
  
end;

procedure TfrmRelatorios.rvsystmAfterPreviewPrint(Sender: TObject);
begin

end;

{ TRelatorioRDP }

procedure TRelatorioRDP.cabecalhoRelatorio;
begin
  RDP.ImpF(1,1,repeteString(115,'-'),[comp12]);
  RDP.ImpF(2,1,'Data/Hora: '+ DateTimeToStr(Now),[comp12]);
  RDP.ImpF(3,40,'Relatório de exemplo RDP',[comp12]);  
  RDP.ImpF(5,1,repeteString(115,'-'),[comp12]);
end;

procedure TRelatorioRDP.configuracoesRelatorio;
begin
  RDP.CaptionSetup := 'Selecione uma impressora';
  RDP.Impressora   := Grafico;
  RDP.OpcoesPreview.CaptionPreview := 'Visualização do relatório';
  RDP.OpcoesPreview.Preview := True;
  RDP.UsaGerenciadorImpr    := True;
  RDP.TamanhoQteLinhas      := 66;
  RDP.TamanhoQteColunas     := 96;
end;

procedure TRelatorioRDP.corpoRelatorio;
var
  i : Integer;
  linha : Integer;
begin

  linha := 7;

  for i := 1 to 100000 do
  begin  
    RDP.ImpF(linha,1, 'VALOR : '+IntToStr(i),[comp12]);
    Inc(linha);

    if linha = 66 then
    begin
      RDP.Novapagina;
      cabecalhoRelatorio();
      linha := 7;
    end;
    
  end;
end;

constructor TRelatorioRDP.Create(AOwner: TComponent);
begin
  RDP := TRDprint.Create(nil);
end;

destructor TRelatorioRDP.Destroy;
begin
  FreeAndNil(RDP);
  inherited;
end;

procedure TRelatorioRDP.relatorioRDP;
begin
  configuracoesRelatorio();
  RDP.Abrir;
  cabecalhoRelatorio();
  corpoRelatorio();
  RDP.Fechar;
end;

function TRelatorioRDP.repeteString(qtde: Integer; caracter: String): string;
var
 i : Integer;
 valorString : string;
begin
  for i := 1 to qtde do
    valorString := valorString+caracter;

  Result := valorString;
end;

end.
