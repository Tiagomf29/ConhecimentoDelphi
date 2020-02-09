unit UFonte;

interface

uses
  DB,ZDataSet,UDM,System.SysUtils;

type

  TFonte = class

  private
    FId: Smallint;
    FCodigoFonte: TBlobData;
    FIdFuncionalidade: Smallint;
    function getCodigoFonte: TBlobData;
    function getId: SmallInt;
    function getIdFuncionalidade: SmallInt;
    procedure setCodigoFonte(const AValue: TBlobData);
    procedure setId(const AValue: SmallInt);
    procedure setIdFuncionalidade(const AValue: SmallInt);
  public
    property id : SmallInt read getId write setId;
    property codigoFonte : TBlobData read getCodigoFonte write setCodigoFonte;
    property idFuncionalidade : SmallInt read getIdFuncionalidade write setIdFuncionalidade;
    function setObject(AId : SmallInt): TZQuery;
  end;

implementation

{ TFonte }

function TFonte.getCodigoFonte: TBlobData;
begin
  Result := FCodigoFonte;
end;

function TFonte.getId: SmallInt;
begin
 Result := FId;
end;

function TFonte.getIdFuncionalidade: SmallInt;
begin
  Result := FIdFuncionalidade;
end;

procedure TFonte.setCodigoFonte(const AValue: TBlobData);
begin
  FCodigoFonte := AValue;
end;

procedure TFonte.setId(const AValue: SmallInt);
begin
  FId := AValue;
end;

procedure TFonte.setIdFuncionalidade(const AValue: SmallInt);
begin
  FIdFuncionalidade := AValue;
end;

function TFonte.setObject(AId : SmallInt):TZQuery;
var
  qryTemp : TZQuery;
begin
  qryTemp := TZQuery.Create(nil);
  qryTemp.Connection := DM.conexao;
 
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Add('select * from fonte where id =:id');
  qryTemp.ParamByName('id').AsInteger := AId;
  qryTemp.Open;

  FCodigoFonte      := qryTemp.FieldByName('codigo_fonte').AsBytes;
  FId               := qryTemp.FieldByName('id').AsInteger;
  FIdFuncionalidade := qryTemp.FieldByName('id_funcionalidade').AsInteger;

  Result := qryTemp;
  
end;

end.
