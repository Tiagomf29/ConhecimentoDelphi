unit UCor;

interface
uses
  System.Generics.collections, ZDataSet, UDM, Sysutils;
  
type
  TCorEnumerado = (tceNone = 0,
                   tceVermelho = 10,
                   tceVerde = 20,
                   tceAmarelo = 30,
                   tceAzul = 40,
                   tceBranco = 50,
                   tceMarron = 60,
                   tceRoxo = 70,
                   tcePreto = 80,
                   tceLilas = 90,
                   tceBonina = 100);
  TCor = class

  private
    FId: Smallint;
    FNome: String;
    FSigla: String;
    function getId: Smallint;
    function getNome: String;
    function getSigla: String;
    procedure setId(const AValue: Smallint);
    procedure setNome(const AValue: String);
    procedure setSigla(const AValue: String);
    
  var
    qry : TZQuery;
    lista : TObjectList<TCor>;
    cor : Tcor; 
    
    constructor create();
    destructor Destroy; override;

  public
    property id: Smallint read getId write setId;
    property nome: String read getNome write setNome;
    property sigla: String read getSigla write setSigla;

    function getList(): TObjectList<TCor>;
    function converteEnumCor(AId : smallint): TCorEnumerado;
    procedure setObject();
  
  end;

implementation

{ TCor }

function TCor.converteEnumCor(AId: smallint): TCorEnumerado;
var
  i : SmallInt;
const
  listaEnumCor : array[0..10] of TCorEnumerado = (tceNone,tceVermelho,
                                                  tceVerde,tceAmarelo, 
                                                  tceAzul,tceBranco,
                                                  tceMarron,tceRoxo,
                                                  tcePreto,tceLilas,tceBonina);
begin

    for i := 0 to 10 do
    begin
      if Integer(listaEnumCor[i]) = Aid then
      begin
        Result := listaEnumCor[i];  
        Exit;
      end;
    end;
    
end;

constructor TCor.create;
begin
end;

destructor TCor.Destroy;
begin
  if qry <> nil then
    FreeAndNil(qry);

  if lista <> nil then
    FreeAndNil(lista);

  if cor <> nil then
    FreeAndNil(cor)  ;

  inherited;
end;

function TCor.getId: Smallint;
begin
  Result := FId;
end;

function TCor.getList : TObjectList<TCor>;
begin

  lista := TObjectList<TCor>.Create;
  qry  := TZQuery.Create(nil);
  qry.Connection := DM.conexao;

  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('select * from cores');
  qry.Open;

  while not qry.Eof do
  begin
  
    cor := TCor.Create;
    
    cor.FId    := qry.FieldByName('id').AsInteger;
    cor.FNome  := qry.FieldByName('nome').AsString;
    cor.FSigla := qry.FieldByName('sigla').AsString;

    lista.Add(cor);

    qry.Next;
    
  end;

  Result := lista;
  
end;

function TCor.getNome: String;
begin
  Result := FNome;
end;

function TCor.getSigla: String;
begin
  Result := FSigla;
end;

procedure TCor.setId(const AValue: Smallint);
begin
  FId := AValue;
end;

procedure TCor.setNome(const AValue: String);
begin
  FNome := AValue;
end;

procedure TCor.setObject;
begin

  lista := TObjectList<TCor>.Create;
  qry   := TZQuery.Create(nil);
  qry.Connection := DM.conexao;

  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('select * from cores');
  qry.Open;

  FId    := qry.FieldByName('id').AsInteger;
  FNome  := qry.FieldByName('nome').AsString;
  FSigla := qry.FieldByName('sigla').AsString;
  
end;

procedure TCor.setSigla(const AValue: String);
begin
  FSigla := AValue;
end;

end.
