unit controller.dto.itenspedido;

interface

uses
  controller.dto.interfaces, Dao.Interfaces.CRUD,
  Dao.CRUDSimpleORM, Model.ItensPedido;

type
  TItensPedidoDTO = class(TInterfacedObject,iItensPedido)
    private
      FEntity : TItensPedidos;
      FService: iCRUD<TItensPedidos>;
    public
       constructor Create;
       destructor Destroy; override;
       class function New : iItensPedido;
       function id(aValue : Integer) : iItensPedido; overload;
       function id: integer; overload;
       function valor(aValue : double) : iItensPedido; overload;
       function valor: double; overload;
       function quantidade(aValue : Integer) : iItensPedido; overload;
       function quantidade: integer; overload;
       function idpedido(aValue : Integer) : iItensPedido; overload;
       function idpedido: integer; overload;
       function iditem(aValue : Integer) : iItensPedido; overload;
       function iditem: integer; overload;
       function Build : iCRUD<TItensPedidos>;
  end;


implementation



{ TItensPedidoDTO }

function TItensPedidoDTO.Build: iCRUD<TItensPedidos>;
begin
  Result := FService;
end;

constructor TItensPedidoDTO.Create;
begin
 FEntity := TItensPedidos.Create;  //Model
 FService:= TCRUDSimpleORM<TItensPedidos>.New(FEntity);
end;

destructor TItensPedidoDTO.Destroy;
begin
  FEntity.Free;
  inherited;
end;

function TItensPedidoDTO.id: integer;
begin
  Result := FEntity.id;
end;

function TItensPedidoDTO.id(aValue: Integer): iItensPedido;
begin
  Result := Self;
  FEntity.id := aValue;
end;

function TItensPedidoDTO.iditem(aValue: Integer): iItensPedido;
begin
  Result := Self;
  FEntity.iditem := aValue;
end;

function TItensPedidoDTO.iditem: integer;
begin
  Result := FEntity.iditem;
end;

function TItensPedidoDTO.idpedido(aValue: Integer): iItensPedido;
begin
  Result := Self;
  FEntity.idpedido := aValue;
end;

function TItensPedidoDTO.idpedido: integer;
begin
  Result := FEntity.idpedido;
end;

class function TItensPedidoDTO.New: iItensPedido;
begin
 Result := Self.Create;
end;

function TItensPedidoDTO.quantidade(aValue: Integer): iItensPedido;
begin
  Result := Self;
  FEntity.quantidade := aValue;
end;

function TItensPedidoDTO.quantidade: integer;
begin
 Result := FEntity.quantidade;
end;

function TItensPedidoDTO.valor: double;
begin
 Result := FEntity.valor;
end;

function TItensPedidoDTO.valor(aValue: double): iItensPedido;
begin
  Result := Self;
  FEntity.valor := aValue;
end;

end.
