unit controller.dto.cliente;

interface

uses
  controller.dto.interfaces,
  Model.Cliente,
  Dao.Interfaces.CRUD,
  Model.Pessoa, Dao.CRUDSimpleORM;

type
  TClienteDTO = class(TInterfacedObject,iCliente)
    private
      FEntity : TCliente;
      FService: iCRUD<TCliente>;
    public
       constructor Create;
       destructor Destroy; override;
       class function New : iCliente;
       function id(aValue : Integer) : iCliente; overload;
       function id: integer; overload;
       function idPessoa(aValue : Integer) : iCliente; overload;
       function idPessoa: integer; overload;
       function tipo(aValue : string) : iCliente; overload;
       function tipo: string; overload;
       function cpfCnpj(aValue : string) : iCliente; overload;
       function cpfCnpj: string; overload;
       function Build : iCRUD<TCliente>;
  end;

implementation

{ TClienteDTO }

function TClienteDTO.Build: iCRUD<TCliente>;
begin
  Result := FService;
end;

function TClienteDTO.cpfCnpj(aValue: string): iCliente;
begin
  Result := Self;
  FEntity.cpfCnpj := aValue;
end;

function TClienteDTO.cpfCnpj: string;
begin
  Result := FEntity.cpfCnpj;
end;

constructor TClienteDTO.Create;
begin
  FEntity        := TCliente.Create;
  FService       := TCRUDSimpleORM<TCliente>.New(FEntity);
end;

destructor TClienteDTO.Destroy;
begin
   FEntity.Free;
  inherited;
end;

function TClienteDTO.id(aValue: Integer): iCliente;
begin
  Result := Self;
  FEntity.id := aValue;
end;

function TClienteDTO.id: integer;
begin
  Result := FEntity.id;
end;

function TClienteDTO.idPessoa(aValue: Integer): iCliente;
begin
  Result := Self;
  FEntity.idPessoa := aValue;
end;

function TClienteDTO.idPessoa: integer;
begin
  Result := FEntity.idPessoa;
end;

class function TClienteDTO.New: iCliente;
begin
  Result := Self.Create;
end;

function TClienteDTO.tipo(aValue: string): iCliente;
begin
  Result := Self;
  FEntity.tipo := aValue;
end;

function TClienteDTO.tipo: string;
begin
  Result := FEntity.tipo;
end;

end.
