unit UExemploArrays;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids;

type
  
  TFrmExemploArrays = class(TForm)
    btnCriaLista: TButton;
    mmo1: TMemo;
    btnCriarlista2: TButton;
    btnFonte1: TBitBtn;
    btnFonte2: TBitBtn;
    StringGrid1: TStringGrid;
    procedure btnCriaListaClick(Sender: TObject);
    procedure btnCriarlista2Click(Sender: TObject);
    procedure btnFonte2Click(Sender: TObject);
    procedure btnFonte1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExemploArrays: TFrmExemploArrays;

implementation
uses
  UCor, UCodigoFonte;

{$R *.dfm}

procedure TFrmExemploArrays.btnCriaListaClick(Sender: TObject);
var
  lista : array[0..5]of string;
  lista2 : array of Integer;
  cor  : TCor;
  i : Integer;
begin

  mmo1.Clear;

  cor := TCor.Create;

  for i := 0 to 4 do
  begin  
    lista[i]:= 'Valor: '+IntToStr(i);
  end;

  SetLength(lista2,cor.getList.Count);
  
  for i := 0 to cor.getList.Count -1 do
  begin  
    lista2[i] := cor.getList.Items[i].id;
  end;

  mmo1.Lines.Add('Array de string com limitação de 5 posições em sua declaração:');
  
  for i := 0 to Length(lista)-1 do
  begin  
    mmo1.Lines.Add(lista[i]);
  end;

  mmo1.Lines.Add('Array de inteiros sem limitação de posições em sua declaração:');
  
  for i := 0 to Length(lista2)-1 do
  begin  
    mmo1.Lines.Add(IntToStr(lista2[i]));
  end;  
  
end;

procedure TFrmExemploArrays.btnCriarlista2Click(Sender: TObject);
 const   
  lColuna = 5;
  lLinha = 10;
 var
  lListaMultDimensional : array of array of TCor;
  cor : TCor;
  j,l,lPosicaoLista,lLinhaRadom,lColunaRandom : Integer;
  
begin

  StringGrid1.Selection := TGridRect(Rect(-1,-1,-1,-1));
  
  SetLength(lListaMultDimensional,lLinha,lColuna);

  lPosicaoLista := 0;
  
  for j := 0 to lLinha -1 do
  begin
    
     for l := 0 to lColuna -1 do
     begin
       if lListaMultDimensional[j][l] = nil then
        begin 
          cor := TCor.Create;
         
          if cor.getList.Count = lPosicaoLista then
            break;
              
          lListaMultDimensional[j][l] :=  cor.getList.Items[lPosicaoLista];
          lPosicaoLista := lPosicaoLista +1;
         
        end;          
     end;
       
  end;
  try
    for l := 0 to StringGrid1.RowCount-1 do
      StringGrid1.Rows[l].Clear; 
 
    StringGrid1.ColCount := lColuna;
    StringGrid1.RowCount := lLinha;

    for l := Low(lListaMultDimensional) to High(lListaMultDimensional)-1 do
    begin
      for j := Low(lListaMultDimensional[l]) to High(lListaMultDimensional[l]) do
      begin 

        lLinhaRadom := Random(High(lListaMultDimensional))+1;
        lColunaRandom:= Random(High(lListaMultDimensional[l]))+1;

        if StringGrid1.Cells[lColunaRandom,lLinhaRadom]<> '' then
        begin
          while StringGrid1.Cells[lColunaRandom,lLinhaRadom]<> '' do
          begin
           lLinhaRadom := Random(High(lListaMultDimensional));
           lColunaRandom:= Random(High(lListaMultDimensional[l]));
          end;           
        end;

        if lListaMultDimensional[l][j] <> nil then
        begin      
          StringGrid1.Objects[lColunaRandom,lLinhaRadom]:= lListaMultDimensional[l][j];
          StringGrid1.Cells[lColunaRandom,lLinhaRadom]:= lListaMultDimensional[l][j].nome;
        end;
           
      end;
    end;
  finally
    FreeAndNil(cor);
  end;

end;

procedure TFrmExemploArrays.btnFonte1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(16,'lista2[i] := cor.getList.Items[i].id;');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TFrmExemploArrays.btnFonte2Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(15,'lListaMultDimensional[j][l] :=  cor.getList.Items[lPosicaoLista];');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TFrmExemploArrays.FormShow(Sender: TObject);
begin
  StringGrid1.Selection := TGridRect(Rect(-1,-1,-1,-1));
end;

procedure TFrmExemploArrays.StringGrid1DblClick(Sender: TObject);
begin

  if StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]<>'' then
  begin
    ShowMessage('Id: '+IntToStr(TCor(StringGrid1.Objects[StringGrid1.Col,StringGrid1.Row]).id) +#13+
                'Nome: '+TCor(StringGrid1.Objects[StringGrid1.Col,StringGrid1.Row]).nome +#13+
                'Sigla: '+TCor(StringGrid1.Objects[StringGrid1.Col,StringGrid1.Row]).sigla);
  end;
    
end;

procedure TFrmExemploArrays.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  l,j : Integer;  
begin
  for l := 0 to StringGrid1.RowCount-1 do
  begin
    for j := 0 to StringGrid1.ColCount-1 do
    begin
      if StringGrid1.Cells[j,l] <> '' then
      begin    
        if (ACol = j) and (ARow = l) then
          begin
            StringGrid1.Canvas.Brush.Color := clYellow;
            StringGrid1.Canvas.FillRect(Rect);
            StringGrid1.Canvas.TextOut(Rect.Left+2, Rect.Top+2, StringGrid1.Cells[ACol,ARow]);
          end;
      end;    
    end;
  end;      
end;

end.
