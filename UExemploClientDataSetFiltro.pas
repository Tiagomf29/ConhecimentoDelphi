unit UExemploClientDataSetFiltro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB, Datasnap.DBClient, Vcl.Buttons;

type
  TfrmExemploClientDataSetFiltro = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtPesquisaNome: TEdit;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    edtNome: TEdit;
    CDS: TClientDataSet;
    DTS: TDataSource;
    CDSNome: TStringField;
    Button1: TButton;
    Button2: TButton;
    BitBtn2: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaNomeChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemploClientDataSetFiltro: TfrmExemploClientDataSetFiltro;

implementation
uses
  UCodigoFonte;

{$R *.dfm}

procedure TfrmExemploClientDataSetFiltro.BitBtn2Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(7,'procedure TfrmExemploClientDataSetFiltro.edtPesquisaNomeChange(Sender: TObject);');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmExemploClientDataSetFiltro.Button1Click(Sender: TObject);
begin
  if edtNome.Text = '' then
  begin
    MessageDlg('Nome não informado.',mtInformation,[mbOK],0);
    edtNome.SetFocus;
    Abort;
  end;

  if CDSNome.Value = edtNome.Text then
    CDS.Edit
  else    
    CDS.Append;
    
  CDSNome.Value := edtNome.Text;
  //CDS.FieldByName('nome').AsString := edtNome.Text;
  cds.Post;
  edtNome.Text := '';
  edtNome.SetFocus;
  MessageDlg('Registro Enviado com sucesso para o DBGRID.',mtInformation,[mbOK],0);
    
end;

procedure TfrmExemploClientDataSetFiltro.Button2Click(Sender: TObject);
begin
  if CDSNome.Value <> '' then
  begin
    CDS.Delete;
    MessageDlg('Registro excluido do clientDataSet com sucesso!',mtInformation,[mbOK],0);
    edtNome.SetFocus;
  end;
  
end;

procedure TfrmExemploClientDataSetFiltro.DBGrid1CellClick(Column: TColumn);
begin
  edtNome.Text := CDSNome.Value;
end;

procedure TfrmExemploClientDataSetFiltro.edtPesquisaNomeChange(Sender: TObject);
begin
  CDS.Filtered := true;
  Cds.Filter := 'NOME like '+QuotedStr('%'+edtPesquisaNome.Text+'%');
end;

procedure TfrmExemploClientDataSetFiltro.FormShow(Sender: TObject);
begin
  edtNome.SetFocus;
end;

end.
