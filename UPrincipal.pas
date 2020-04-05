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
                           ttpRelatorios, ttpHerancaClasses, ttpHerancaFormularios,
                           ttpCheckListBoxObjetos, ttpWebServiceSoap, ttpCase, ttpBotaoGrid);

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
  UExemploCopiaObjeto, URelatorios, UHerancaClasses, UExemploHerancaFormularios,
  UExemploCheckListBox;
{$R *.dfm}

procedure TfrmPrincipal.DBGrid1CellClick(Column: TColumn);
begin

  if DBGrid1.SelectedField.FieldName = 'EXEMPLO' then
  begin
    case TTiposFuncionalidades(CDSID.Value) of

      ttpComboboxObjetos       :  try
                                    frmExemploCombobox := TfrmExemploCombobox.Create(nil);
                                    frmExemploCombobox.ShowModal;
                                  finally
                                    FreeAndNil(frmExemploCombobox);
                                  end;
                                
                             
      ttpFiltroClientDataSet   :  try
                                    frmExemploClientDataSetFiltro := TFrmExemploClientDataSetFiltro.Create(nil);
                                    frmExemploClientDataSetFiltro.ShowModal;
                                  finally
                                      FreeAndNil(frmExemploClientDataSetFiltro);
                                  end;
                                  
      ttpRadioGroupObjetos     :  try
                                    frmExemploRadioGroup := TFrmExemploRadioGroup.Create(nil);
                                    frmExemploRadioGroup.ShowModal;
                                  finally
                                    FreeAndNil(frmExemploRadioGroup);
                                  end;
                                  
      ttpConstructorDestructor :  try
                                    frmConstrutoresDestrutores := TFrmConstrutoresDestrutores.Create(nil);
                                    frmConstrutoresDestrutores.ShowModal;
                                  finally
                                    FreeAndNil(frmConstrutoresDestrutores);
                                  end;
                                  
      ttpPolimorfismo          :  try
                                    frmPolimorfismoSobrecargaSobrescrita := TFrmPolimorfismoSobrecargaSobrescrita.Create(nil);
                                    frmPolimorfismoSobrecargaSobrescrita.ShowModal;
                                  finally
                                    FreeAndNil(frmPolimorfismoSobrecargaSobrescrita);
                                  end;                                                                    

      ttpLista                 :  try
                                    frmExemploListas := tFrmExemploListas.Create(nil);
                                    frmExemploListas.ShowModal;
                                  finally
                                    FreeAndNil(frmExemploListas);
                                  end;
                                                                    
      ttpArrays                :  try
                                    FrmExemploArrays := tFrmExemploArrays.Create(nil);
                                    FrmExemploArrays.ShowModal;
                                  finally
                                    FreeAndNil(FrmExemploArrays);
                                  end;
                                                                   
      ttpCopiaObjetos          :  try
                                    frmCopiaObjetos := tfrmCopiaObjetos.Create(nil);
                                    frmCopiaObjetos.ShowModal;
                                  finally
                                    FreeAndNil(frmCopiaObjetos);
                                  end;
                                                                    
      ttpRelatorios            :  try
                                    frmRelatorios := TfrmRelatorios.Create(nil);
                                    frmRelatorios.ShowModal;
                                  finally
                                    FreeAndNil(frmRelatorios);
                                  end;
                                                                  
      ttpHerancaClasses        :  try
                                    frmHerancaClasse := TfrmHerancaClasse.Create(nil);
                                    frmHerancaClasse.ShowModal;
                                  finally
                                    FreeAndNil(frmHerancaClasse);
                                  end;
                                                                  
      ttpHerancaFormularios    :  try
                                    frmPrincipalHeracaoFormularios := TfrmPrincipalHeracaoFormularios.Create(nil);
                                    frmPrincipalHeracaoFormularios.ShowModal;
                                  finally
                                    FreeAndNil(frmPrincipalHeracaoFormularios);
                                  end;
                                                                    
      ttpCheckListBoxObjetos   :  try
                                    frmExemploCheckListBox := TfrmExemploCheckListBox.Create(nil);
                                    frmExemploCheckListBox.ShowModal;
                                  finally
                                    FreeAndNil(frmExemploCheckListBox);
                                  end;
                                  
      ttpCase                  :  try
                                    MessageDlg('Exemplo referente a tela principal (Grid) desta aplicação',mtInformation,[mbok],0);
                                    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
                                    frmCodigoFonte.carregaCodigoFormulario(28,'case TTiposFuncionalidades(CDSID.Value) of');
                                    frmCodigoFonte.ShowModal;
                                  finally
                                    FreeAndNil(frmCodigoFonte);
                                  end;

      ttpBotaoGrid             :  try
                                    MessageDlg('Exemplo referente a tela principal (Grid) desta aplicação',mtInformation,[mbok],0);
                                    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
                                    frmCodigoFonte.carregaCodigoFormulario(29,'DBGrid1DrawColumnCell');
                                    frmCodigoFonte.ShowModal;
                                  finally
                                    FreeAndNil(frmCodigoFonte);
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
