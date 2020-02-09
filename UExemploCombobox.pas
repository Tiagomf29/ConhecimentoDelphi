unit UExemploCombobox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections,  UCor,
  Vcl.Buttons;

type
  TfrmExemploCombobox = class(TForm)
    gbComboboxObejtos: TGroupBox;
    cbbCores: TComboBox;
    Button1: TButton;
    lblCores: TLabel;
    GroupBox1: TGroupBox;
    cbbCores2: TComboBox;
    lblCores2: TLabel;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    cbbCores3: TComboBox;
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
  
  public
    { Public declarations }
  end;

var
  frmExemploCombobox: TfrmExemploCombobox;

implementation


{$R *.dfm}

uses UCodigoFonte;

procedure TfrmExemploCombobox.BitBtn1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(1,'cbbCores.Items.AddObject(listaTemp.Items[i].nome, TCor(corTemp.id));');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmExemploCombobox.BitBtn2Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(2,'cbbCores2.Items.AddObject(listaTemp.Items[i].nome, TCor(corTemp)); ');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmExemploCombobox.BitBtn3Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(3,'cbbCores3.Items.AddObject(listaTemp.Items[i].nome, TObject(corTemp.converteEnumCor(corTemp.id )));');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmExemploCombobox.Button1Click(Sender: TObject);
begin
  MessageDlg('O ID do item selecionado no banco de dados é :'+#13+
             IntToStr( Integer(cbbCores.Items.Objects[cbbCores.ItemIndex])),mtInformation,[mbOK],0);
end;

procedure TfrmExemploCombobox.Button2Click(Sender: TObject);
begin
  MessageDlg('O Id do item selecionado é : '+ IntToStr(TCor(cbbCores2.Items.Objects[cbbCores2.ItemIndex]).id)+#13+
             'A sigla do item selecionado é :'+ Tcor(cbbCores2.Items.Objects[cbbCores2.ItemIndex]).sigla + #13+
             'O nome do item selecionado é :'+TCor(cbbCores2.Items.Objects[cbbCores2.ItemIndex]).nome,mtInformation,[mbOK],0);
end;

procedure TfrmExemploCombobox.Button3Click(Sender: TObject);
begin
 
  case TCorEnumerado( cbbCores3.Items.Objects[cbbCores3.ItemIndex] ) of

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

procedure TfrmExemploCombobox.FormShow(Sender: TObject);
var
  i         : smallint;  
  corTemp   : TCor;
  listaTemp : TObjectList<TCor>;
begin

  // Exemplo de combobox sendo polulado com objetos, no entanto, o objeto 
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

      cbbCores.Items.AddObject(listaTemp.Items[i].nome, TCor(corTemp.id));    
    end;
  finally
    FreeAndNil(listaTemp);
    FreeAndNil(corTemp);
  end;

  // Exemplo de combobox sendo polulado com objetos, no entanto, o objeto 
  // passado é não é explicitado como um tipo primitivo de modo que todos os atributos da classe poderão ser recuperados.
  // Neste caso o objeto corTemp não pode ser morto após o combobox ser populado. 
  corTemp       := TCor.Create();
  listaTemp := corTemp.getList;
  
  try
    for i := 0 to listaTemp.Count-1 do
    begin 
     
      corTemp       := TCor.Create();

      corTemp.id    := listaTemp.Items[i].id;
      corTemp.nome  := listaTemp.Items[i].nome;
      corTemp.sigla := listaTemp.Items[i].sigla;
    
      cbbCores2.Items.AddObject(listaTemp.Items[i].nome, TCor(corTemp));      
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
    
      cbbCores3.Items.AddObject(listaTemp.Items[i].nome, TObject(corTemp.converteEnumCor(corTemp.id )));      
    end;
  finally
    FreeAndNil(listaTemp);
  end;  
  
  cbbCores.ItemIndex := 0;
  cbbCores2.ItemIndex:= 0;
  cbbCores3.ItemIndex:= 0;
  
end;

end.
