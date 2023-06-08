unit controller.dto.pedido;

interface

uses
  controller.dto.interfaces, Dao.Interfaces.CRUD, Model.Pessoa,
  Dao.CRUDSimpleORM, Model.Pedido;

type
  TPedidoDTO = class(TInterfacedObject,iPedido)
    private
      FEntity : TPedido;
      FService: iCRUD<TPedido>;
    public
       constructor Create;
       destructor Destroy; override;
       class function New : iPedido;
       function id(aValue : Integer) : iPedido; overload;
       function id: integer; overload;
       function desconto(aValue : double) : iPedido; overload;
       function desconto: double; overload;
       function total(aValue : double) : iPedido; overload;
       function total: double; overload;
       function idCliente(aValue : Integer) : iPedido; overload;
       function idCliente: integer; overload;
       function Build : iCRUD<TPedido>;
  end;


implementation



{ TPedidoDTO }

function TPedidoDTO.Build: iCRUD<TPedido>;
begin
   Result := FService;
end;

constructor TPedidoDTO.Create;
begin
  FEntity := TPedido.Create;  //Model
  FService:= TCRUDSimpleORM<TPedido>.New(FEntity);
end;

function TPedidoDTO.desconto(aValue : double): iPedido;
begin
  Result := Self;
  FEntity.desconto := aValue;
end;

function TPedidoDTO.desconto: double;
begin
  Result := FEntity.desconto;
end;

destructor TPedidoDTO.Destroy;
begin
  FEntity.Free;
  inherited;
end;

function TPedidoDTO.id: integer;
begin
  Result := FEntity.id;
end;

function TPedidoDTO.id(aValue: Integer): iPedido;
begin
  Result := Self;
  FEntity.id := aValue;
end;

function TPedidoDTO.idCliente: integer;
begin
  Result := FEntity.idCliente;
end;

function TPedidoDTO.idCliente(aValue: Integer): iPedido;
begin
  Result := Self;
  FEntity.idCliente := aValue;
end;

class function TPedidoDTO.New: iPedido;
begin
  Result := Self.Create;
end;

function TPedidoDTO.total: double;
begin
  Result := FEntity.total;
end;

function TPedidoDTO.total(aValue: double): iPedido;
begin
  Result := Self;
  FEntity.total := aValue;
end;

end.
