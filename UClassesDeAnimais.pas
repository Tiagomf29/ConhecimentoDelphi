unit UClassesDeAnimais;

interface

type

TClasseAnimal = class
    
  private
    FCodigo : Integer;
    FNome   : String;
    FIdade  : Integer;
    FCor    : string;
    FPeso   : Double;
    FAltura : Double;                          
    
    function getAltura: double;
    function getCodigo: Integer;
    function getCor: String;
    function getIdade: Integer;
    function getNome: string;
    function getPeso: double;
    procedure setAltura(const Value: double);
    procedure setCodigo(const Value: Integer);
    procedure setCor(const Value: String);
    procedure setIdade(const Value: Integer);
    procedure setNome(const Value: string);
    procedure setPeso(const Value: double);

  public 
    property codigo : Integer read getCodigo write setCodigo;
    property nome   : string  read getNome   write setNome;
    property idade  : Integer read getIdade  write setIdade;
    property cor    : String  read getCor    write setCor;
    property peso   : double  read getPeso   write setPeso;
    property altura : double  read getAltura write setAltura;
    
end;

TClasseCachorro = class(TClasseAnimal)

  private
    FRaca : string;
    function getRaca: String;
    procedure setRaca(const Value: String);

  public 
    property raca : String read getRaca write setRaca;
    
end;

TClassePato = class(TClasseAnimal)

  private
    FEspecie : string;
    function getEspecie: String;
    procedure setEspecie(const Value: String);
                     
  public 
    property especie : String read getEspecie write setEspecie;
     

end;

TClasseGato = class(TClasseAnimal)

  private
    FRaca : string;
    function getRaca: String;
    procedure setRaca(const Value: String);

  public
    property raca : String read getRaca write setRaca; 
  
end;

implementation

{ TClasseAnimal }

function TClasseAnimal.getAltura: double;
begin
  Result := FAltura;
end;

function TClasseAnimal.getCodigo: Integer;
begin
  Result := FCodigo;
end;

function TClasseAnimal.getCor: String;
begin
  Result := FCor;
end;

function TClasseAnimal.getIdade: Integer;
begin
  Result := FIdade;
end;

function TClasseAnimal.getNome: string;
begin
  Result := FNome;
end;

function TClasseAnimal.getPeso: double;
begin
  Result := FPeso;
end;

procedure TClasseAnimal.setAltura(const Value: double);
begin
  FAltura := Value;
end;

procedure TClasseAnimal.setCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TClasseAnimal.setCor(const Value: String);
begin
  FCor := Value;
end;

procedure TClasseAnimal.setIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TClasseAnimal.setNome(const Value: string);
begin
  FNome := Value;
end;

procedure TClasseAnimal.setPeso(const Value: double);
begin
  FPeso := Value;
end;

{ TClasseCachorro }

function TClasseCachorro.getRaca: String;
begin
  Result := FRaca;
end;

procedure TClasseCachorro.setRaca(const Value: String);
begin
  FRaca := Value;
end;

{ TClassePato }

function TClassePato.getEspecie: String;
begin
  Result := FEspecie;
end;

procedure TClassePato.setEspecie(const Value: String);
begin
  FEspecie := Value;
end;

{ TClasseGato }

function TClasseGato.getRaca: String;
begin
  Result := FRaca;
end;

procedure TClasseGato.setRaca(const Value: String);
begin
  FRaca := Value;
end;

end.
