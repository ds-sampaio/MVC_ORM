unit controller.dto.endereco;

interface

uses
  controller.dto.interfaces,
  Dao.Interfaces.CRUD,
  Model.Pessoa,
  Dao.CRUDSimpleORM,
  Model.Endereco;

type
  TEnderecoDTO = class(TInterfacedObject,iEndereco)
    private
      FEntity : TEndereco;
      FService: iCRUD<TEndereco>;
    public
       constructor Create;
       destructor Destroy; override;
       class function New : iEndereco;
        function id(aValue : Integer) : iEndereco; overload;
        function id: integer; overload;
        function idPessoa(aValue : Integer) : iEndereco; overload;
        function idPessoa: integer; overload;
        function logradouro(aValue : string) : iEndereco; overload;
        function logradouro: string; overload;
        function bairro(aValue : string) : iEndereco; overload;
        function bairro: string; overload;
        function numero(aValue : string) : iEndereco; overload;
        function numero: string; overload;
        function cep(aValue : string) : iEndereco; overload;
        function cep: string; overload;
        function Build : iCRUD<TEndereco>;
  end;


implementation


{ TEnderecoDTO }

function TEnderecoDTO.bairro: string;
begin
  Result := FEntity.bairro;
end;

function TEnderecoDTO.bairro(aValue: string): iEndereco;
begin
  Result := Self;
  FEntity.bairro := aValue;
end;

function TEnderecoDTO.Build: iCRUD<TEndereco>;
begin
  Result := FService;
end;

function TEnderecoDTO.cep: string;
begin
  Result := FEntity.cep;
end;

function TEnderecoDTO.cep(aValue: string): iEndereco;
begin
 Result := Self;
 FEntity.cep := aValue;
end;

constructor TEnderecoDTO.Create;
begin
  FEntity := TEndereco.Create;  //Model
  FService:= TCRUDSimpleORM<TEndereco>.New(FEntity);
end;

destructor TEnderecoDTO.Destroy;
begin
  FEntity.Free;
  inherited;
end;

function TEnderecoDTO.id(aValue: Integer): iEndereco;
begin
  Result := Self;
  FEntity.id := aValue;
end;

function TEnderecoDTO.id: integer;
begin
  Result := FEntity.id;
end;

function TEnderecoDTO.idPessoa(aValue: Integer): iEndereco;
begin
  Result := Self;
  FEntity.idPessoa := aValue;
end;

function TEnderecoDTO.idPessoa: integer;
begin
  Result := FEntity.idPessoa;
end;

function TEnderecoDTO.logradouro: string;
begin
  Result := FEntity.logradouro;
end;

function TEnderecoDTO.logradouro(aValue: string): iEndereco;
begin
  Result := Self;
  FEntity.logradouro := aValue;
end;

class function TEnderecoDTO.New: iEndereco;
begin
  Result := Self.Create;
end;

function TEnderecoDTO.numero(aValue: string): iEndereco;
begin
  Result := Self;
  FEntity.numero := aValue;
end;

function TEnderecoDTO.numero: string;
begin

end;

end.
