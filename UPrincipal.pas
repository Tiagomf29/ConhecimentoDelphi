unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Datasnap.Provider, Datasnap.DBClient, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, UDM, UcodigoFonte;

type

  TTiposFuncionalidades = (ttpNone, ttpComboboxObjetos, ttpFiltroClientDataSet, 
                           ttpRadioGroupObjetos, ttpConstructorDestructor, 
                           ttpPolimorfismo, ttpLista, ttpArrays, ttpCopiaObjetos,
                           ttpRelatorios);

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
    CDSEXEMPLO: TWideStringField;
    procedure edtPesquisaChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
uses
  UExemploCombobox, UExemploRadioGroup, UExemploClientDataSetFiltro,
  UExemploConstrutorDestrutor, UExemploPolimorfismo, UexemploListas, UExemploArrays, 
  UExemploCopiaObjeto, URelatorios;
{$R *.dfm}

procedure TfrmPrincipal.DBGrid1CellClick(Column: TColumn);
begin

  if DBGrid1.SelectedField.FieldName = 'EXEMPLO' then
  begin
    if TTiposFuncionalidades(CDSID.Value) = ttpComboboxObjetos then
    begin
      try
        frmExemploCombobox := TfrmExemploCombobox.Create(nil);
        frmExemploCombobox.ShowModal;
      finally
        FreeAndNil(frmExemploCombobox);
      end;
    end;
    
  end;

  if DBGrid1.SelectedField.FieldName = 'EXEMPLO' then
  begin
    if TTiposFuncionalidades(CDSID.Value) = ttpFiltroClientDataSet then
    begin
      try
        frmExemploClientDataSetFiltro := TFrmExemploClientDataSetFiltro.Create(nil);
        frmExemploClientDataSetFiltro.ShowModal;
      finally
        FreeAndNil(frmExemploClientDataSetFiltro);
      end;
    end;
    
  end;   

  if DBGrid1.SelectedField.FieldName = 'EXEMPLO' then
  begin
    if TTiposFuncionalidades(CDSID.Value) = ttpRadioGroupObjetos then
    begin
      try
        frmExemploRadioGroup := TFrmExemploRadioGroup.Create(nil);
        frmExemploRadioGroup.ShowModal;
      finally
        FreeAndNil(frmExemploRadioGroup);
      end;
    end;
    
  end; 

  if DBGrid1.SelectedField.FieldName = 'EXEMPLO' then
  begin
    if TTiposFuncionalidades(CDSID.Value) = ttpConstructorDestructor then
    begin
      try
        frmConstrutoresDestrutores := TFrmConstrutoresDestrutores.Create(nil);
        frmConstrutoresDestrutores.ShowModal;
      finally
        FreeAndNil(frmConstrutoresDestrutores);
      end;
    end;
    
  end; 

  if DBGrid1.SelectedField.FieldName = 'EXEMPLO' then
  begin
    if TTiposFuncionalidades(CDSID.Value) = ttpPolimorfismo then
    begin
      try
        frmPolimorfismoSobrecargaSobrescrita := TFrmPolimorfismoSobrecargaSobrescrita.Create(nil);
        frmPolimorfismoSobrecargaSobrescrita.ShowModal;
      finally
        FreeAndNil(frmPolimorfismoSobrecargaSobrescrita);
      end;
    end;
    
  end;

 if DBGrid1.SelectedField.FieldName = 'EXEMPLO' then
  begin
    if TTiposFuncionalidades(CDSID.Value) = ttpLista then
    begin
      try
        frmExemploListas := tFrmExemploListas.Create(nil);
        frmExemploListas.ShowModal;
      finally
        FreeAndNil(frmExemploListas);
      end;
    end;
    
  end;  

 if DBGrid1.SelectedField.FieldName = 'EXEMPLO' then
  begin
    if TTiposFuncionalidades(CDSID.Value) = ttpArrays then
    begin
      try
        FrmExemploArrays := tFrmExemploArrays.Create(nil);
        FrmExemploArrays.ShowModal;
      finally
        FreeAndNil(FrmExemploArrays);
      end;
    end;
    
  end; 

 if DBGrid1.SelectedField.FieldName = 'EXEMPLO' then
  begin
    if TTiposFuncionalidades(CDSID.Value) = ttpCopiaObjetos then
    begin
      try
        frmCopiaObjetos := tfrmCopiaObjetos.Create(nil);
        frmCopiaObjetos.ShowModal;
      finally
        FreeAndNil(frmCopiaObjetos);
      end;
    end;
    
  end;   

 if DBGrid1.SelectedField.FieldName = 'EXEMPLO' then
  begin
    if TTiposFuncionalidades(CDSID.Value) = ttpRelatorios then
    begin
      try
        frmRelatorios := TfrmRelatorios.Create(nil);
        frmRelatorios.ShowModal;
      finally
        FreeAndNil(frmRelatorios);
      end;
    end;
    
  end;          
  
  
end;

procedure TfrmPrincipal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  BUTTON : Integer;
  R : TRect; 
  bcolor: TColor; 
begin
  if Column.FieldName = 'EXEMPLO' then
  begin
    DBGrid1.Canvas.FillRect(Rect);
    BUTTON := 0;
    R := Rect;
    InflateRect(R, -15,-1);
    DrawFrameControl(DBGrid1.Canvas.Handle,R, BUTTON,BUTTON or BUTTON);
    bcolor := DBGrid1.Canvas.Brush.Color; // guarda a cor de fundo original
    DBGrid1.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
    DrawText(DBGrid1.Canvas.Handle,'Clique',7,R,DT_CENTER or DT_CENTER);
    DBGrid1.Canvas.Brush.Color := bcolor; // devolve a cor original
  end;
  
end;

procedure TfrmPrincipal.edtPesquisaChange(Sender: TObject);
begin
  cds.Filtered := true;
  cds.Filter := 'Upper(descricao) like'+QuotedStr('%'+ UpperCase(edtPesquisa.Text)+'%')  ;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  CDS.Active := True;
  qry.Active := True;
end;

end.
