unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Datasnap.Provider, Datasnap.DBClient, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, UDM, UcodigoFonte;

type
  TfrmPrincipal = class(TForm)
    GroupBox1: TGroupBox;
    edtPesquisa: TEdit;
    lblDescricao: TLabel;
    DBGrid1: TDBGrid;
    qry: TZQuery;
    DS: TDataSource;
    CDS: TClientDataSet;
    DSP: TDataSetProvider;
    CDSID: TIntegerField;
    CDSDESCRICAO: TWideStringField;
    CDSCODIGOFONTE: TBlobField;
    procedure edtPesquisaChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.DBGrid1CellClick(Column: TColumn);
begin
  if DBGrid1.SelectedField.FieldName = 'CODIGOFONTE' then
  begin
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.ShowModal;
  end;
  
end;

procedure TfrmPrincipal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  BUTTON: Integer;
  R: TRect;  
begin
  if Column.FieldName = 'CODIGOFONTE' then
  begin
    DBGrid1.Canvas.FillRect(Rect);
    BUTTON := 0;
    R:=Rect;
    InflateRect(R,-5,-2); //Diminue o tamanho do Botão
    DrawFrameControl(DBGrid1.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
  end;
end;

procedure TfrmPrincipal.edtPesquisaChange(Sender: TObject);
begin
  cds.Filtered := true;
  cds.Filter := 'Upper(descricao) like'+QuotedStr('%'+ UpperCase(edtPesquisa.Text)+'%')  ;
end;

end.
