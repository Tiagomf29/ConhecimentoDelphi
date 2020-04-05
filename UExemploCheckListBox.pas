unit UExemploCheckListBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, Vcl.Buttons, System.Generics.Collections;

type
  TfrmExemploCheckListBox = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    Button2: TButton;
    BitBtn2: TBitBtn;
    GroupBox3: TGroupBox;
    Button3: TButton;
    BitBtn3: TBitBtn;
    clbCores: TCheckListBox;
    clbCores2: TCheckListBox;
    clbCores3: TCheckListBox;
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
  frmExemploCheckListBox: TfrmExemploCheckListBox;

implementation
uses
 Ucor,UCodigoFonte;

{$R *.dfm}

procedure TfrmExemploCheckListBox.BitBtn1Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(25,'clbCores.Items.AddObject(listaCores.Items[i].nome, TCor(cor.id));');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmExemploCheckListBox.BitBtn2Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(26,'clbCores2.Items.AddObject(listaCores.Items[i].nome, TCor(cor));');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmExemploCheckListBox.BitBtn3Click(Sender: TObject);
begin
  try
    frmCodigoFonte := TfrmCodigoFonte.Create(nil);
    frmCodigoFonte.carregaCodigoFormulario(27,'clbCores3.Items.AddObject(listaCores.Items[i].nome, TObject(cor.converteEnumCor(cor.id)));');
    frmCodigoFonte.ShowModal;
  finally
    FreeAndNil(frmCodigoFonte);
  end;
end;

procedure TfrmExemploCheckListBox.Button1Click(Sender: TObject);
var
  i : Integer;
begin

  for i := 0 to clbCores.Count-1 do
  begin
    if clbCores.Checked[i] then
      MessageDlg('O ID do item selecionado no banco de dados é :'+#13+
                  IntToStr(Integer( clbCores.Items.Objects[i])),mtInformation,[mbOK],0);    
  end;
    
end;

procedure TfrmExemploCheckListBox.Button2Click(Sender: TObject);
var
  i : Integer;
begin
  for i := 0 to clbCores2.Count-1 do
  begin

    if clbCores2.Checked[i] then
      MessageDlg('O Id do item selecionado é : '+ IntToStr(TCor(clbCores2.Items.Objects[i]).id)+#13+
                 'A sigla do item selecionado é :'+ Tcor(clbCores2.Items.Objects[i]).sigla + #13+
                 'O nome do item selecionado é :'+TCor(clbCores2.Items.Objects[i]).nome,mtInformation,[mbOK],0);      
  end;
end;

procedure TfrmExemploCheckListBox.Button3Click(Sender: TObject);
var
  i : Integer;
begin

  for i := 0 to clbCores3.Count - 1 do
  begin

    if clbCores3.Checked[i] then
    begin
      case TCorEnumerado( clbCores3.Items.Objects[i] ) of

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
    
  end;
end;

procedure TfrmExemploCheckListBox.FormShow(Sender: TObject);
var
  cor : TCor;
  listaCores : TObjectList<TCor>;
  i : Integer;
begin

  cor := TCor.Create;

  try
  
    listaCores := cor.getList();

    for i := 0 to listaCores.Count-1 do 
    begin

      cor := TCor.Create;
   
      cor.id := listaCores.Items[i].id;
      cor.nome := listaCores.Items[i].nome;
      cor.sigla := listaCores.Items[i].sigla;
    
      clbCores.Items.AddObject(listaCores.Items[i].nome, TCor(cor.id));
      clbCores2.Items.AddObject(listaCores.Items[i].nome, TCor(cor)); 
      clbCores3.Items.AddObject(listaCores.Items[i].nome, TObject(cor.converteEnumCor(cor.id)));
                
    end;
    
  finally
    FreeAndNil(cor);
  end;
  
end;

end.
