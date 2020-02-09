unit UExemploRadioGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.Generics.Collections,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmExemploRadioGroup = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    rgCores: TRadioGroup;
    Button1: TButton;
    rgCores2: TRadioGroup;
    Button2: TButton;
    rgCores3: TRadioGroup;
    Button3: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemploRadioGroup: TfrmExemploRadioGroup;

implementation
uses 
  UCor, UCodigoFonte;

{$R *.dfm}

procedure TfrmExemploRadioGroup.BitBtn1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(4,'rgCores.Items.AddObject(listaTemp.Items[i].nome, TCor(corTemp.id));');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmExemploRadioGroup.BitBtn2Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(5,'rgCores2.Items.AddObject(listaTemp.Items[i].nome, TCor(corTemp));');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmExemploRadioGroup.BitBtn3Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(6,'rgCores3.Items.AddObject(listaTemp.Items[i].nome, TObject(corTemp.converteEnumCor(corTemp.id )));');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmExemploRadioGroup.Button1Click(Sender: TObject);
begin
   MessageDlg('O ID do item selecionado no banco de dados é :'+#13+
             IntToStr( Integer(rgCores.Items.Objects[rgCores.ItemIndex])),mtInformation,[mbOK],0);
end;

procedure TfrmExemploRadioGroup.Button2Click(Sender: TObject);
begin
MessageDlg('O Id do item selecionado é : '+ IntToStr(TCor(rgCores2.Items.Objects[rgCores2.ItemIndex]).id)+#13+
             'A sigla do item selecionado é :'+ Tcor(rgCores2.Items.Objects[rgCores2.ItemIndex]).sigla + #13+
             'O nome do item selecionado é :'+TCor(rgCores2.Items.Objects[rgCores2.ItemIndex]).nome,mtInformation,[mbOK],0);  
end;

procedure TfrmExemploRadioGroup.Button3Click(Sender: TObject);
begin
  case TCorEnumerado( rgCores3.Items.Objects[rgCores3.ItemIndex] ) of

    tceNone     : MessageDlg('Nenhum registro informado.',mtInformation,[mbOK],0);
    tceVermelho : MessageDlg('Cor vermelha',mtInformation,[mbOK],0);
    tceVerde    : MessageDlg('Cor Verde',mtInformation,[mbOK],0);
    tceAmarelo  : MessageDlg('Cor Amarela',mtInformation,[mbOK],0);
    tceAzul     : MessageDlg('Cor Azul',mtInformation,[mbOK],0);
    tceBranco   : MessageDlg('Cor Branco',mtInformation,[mbOK],0);
    tceMarron   : MessageDlg('Cor Marron',mtInformation,[mbOK],0);
    tceRoxo     : MessageDlg('Cor Roxo',mtInformation,[mbOK],0);
    tcePreto    : MessageDlg('Cor Preto',mtInformation,[mbOK],0);
    tceLilas    : MessageDlg('Cor Lilas',mtInformation,[mbOK],0);
    tceBonina   : MessageDlg('Cor Bonina',mtInformation,[mbOK],0);
    
  end;
end;

procedure TfrmExemploRadioGroup.FormShow(Sender: TObject);
var
  i         : smallint;  
  corTemp   : TCor;
  listaTemp : TObjectList<TCor>;
begin

  // Exemplo de RadioGroup sendo polulado com objetos, no entanto, o objeto 
  // passado é explicitado como um tipo primitivo e apenas os valores nome e Id podem ser recuperados.
  // Neste caso o objeto corTemp pode ser morto após o combobox ser populado.
  corTemp   := TCor.Create();
  listaTemp := corTemp.getList;
  try
    for i := 0 to listaTemp.Count-1 do
    begin 
     
      corTemp       := TCor.Create();

      corTemp.id    := listaTemp.Items[i].id;
      corTemp.nome  := listaTemp.Items[i].nome;
      corTemp.sigla := listaTemp.Items[i].sigla;

      rgCores.Items.AddObject(listaTemp.Items[i].nome, TCor(corTemp.id));    
    end;
  finally
    FreeAndNil(listaTemp);
    FreeAndNil(corTemp);
  end;

  // Exemplo de RadioGroup sendo polulado com objetos, no entanto, o objeto 
  // passado é não é explicitado como um tipo primitivo de modo que todos os atributos da classe poderão ser recuperados.
  // Neste caso o objeto corTemp não pode ser morto após o combobox ser populado. 
  corTemp   := TCor.Create();
  listaTemp := corTemp.getList;
  
  try
    for i := 0 to listaTemp.Count-1 do
    begin 
     
      corTemp       := TCor.Create();

      corTemp.id    := listaTemp.Items[i].id;
      corTemp.nome  := listaTemp.Items[i].nome;
      corTemp.sigla := listaTemp.Items[i].sigla;
    
      rgCores2.Items.AddObject(listaTemp.Items[i].nome, TCor(corTemp));      
    end;
  finally
    FreeAndNil(listaTemp);
  end;  


// Exemplo de combobox sendo polulado com objetos do tipo enumerados. 
  corTemp       := TCor.Create();
  listaTemp := corTemp.getList;
  
  try
    for i := 0 to listaTemp.Count-1 do
    begin 
     
      corTemp       := TCor.Create();

      corTemp.id    := listaTemp.Items[i].id;
      corTemp.nome  := listaTemp.Items[i].nome;
    
      rgCores3.Items.AddObject(listaTemp.Items[i].nome, TObject(corTemp.converteEnumCor(corTemp.id )));      
    end;
  finally
    FreeAndNil(listaTemp);
  end;    

  rgCores.ItemIndex := 0;
  rgCores2.ItemIndex:=0;
  rgCores3.ItemIndex:=0;
  
end;

end.
